import glob
import itertools
import os
import sys
import tempfile
import time

import click
from joblib import Parallel, delayed, load, dump
import numpy as np
import pandas as pd
from scipy.spatial.distance import squareform
from sourmash import signature as sig
from tqdm import tqdm


KSIZES = 21, 27, 33, 51
MOLECULES = 'dna', 'protein'
LOG2_NUM_HASHES = 8, 9, 10, 11, 12, 13, 14, 15, 16


def filter_siglist(siglist, ksize, moltype):
    if moltype == 'protein':
        molfilter = lambda x: x.minhash.is_protein
    else:
        molfilter = lambda x: not x.minhash.is_protein

    return [s for s in siglist if molfilter(s) and (s.minhash.ksize == ksize)]


def load_signatures(filenames):

    siglist = []

    for filename in tqdm(filenames):
        loaded = sig.load_signatures(filename)
        siglist.extend(loaded)
    return siglist


def _compare_serial(siglist, iterator):
    n = len(siglist)
    values = np.ones((n, n))

    for i, j in iterator:
        jaccard = siglist[i].jaccard(siglist[j])

        values[i, j] = jaccard
        values[j, i] = jaccard

    return values


def compare_all_pairs(siglist, n_jobs=None):
    n = len(siglist)

    # Combinations makes all unique sets of pairs, e.g. (A, B) but not (B, A)
    iterator = itertools.combinations(range(n), 2)
    sig_iterator = itertools.combinations(siglist, 2)

    if n_jobs is None or n_jobs == 1:
        values = _compare_serial(siglist, iterator)
    else:
        # This creates a condensed distance matrix
        condensed = Parallel(n_jobs=n_jobs, require='sharedmem')(
            delayed(sig1.jaccard)(sig2) for sig1, sig2 in sig_iterator)
        values = squareform(condensed)

    return values


def _memmap_siglist(siglist):
    """Write a memory-mapped array of signatures"""
    temp_folder = tempfile.mkdtemp()
    filename = os.path.join(temp_folder, 'joblib_test.mmap')
    if os.path.exists(filename): os.unlink(filename)
    _ = dump(siglist, filename)
    large_memmap = load(filename, mmap_mode='r+')
    return large_memmap



def downsample_and_compare(signatures, log2_num_hash, molecule, ksize):
    t0 = time.time()
    filtered = filter_siglist(signatures, ksize, molecule)
    t1 = time.time()
    num_hash = 2**log2_num_hash
    downsampled = [s.minhash.downsample_n(num_hash) for s in filtered]
    t2 = time.time()
    memmapped = _memmap_siglist(downsampled)
    t3 = time.time()
    values = compare_all_pairs(memmapped)
    t4 = time.time()

    names = [s.name().split('|')[0] for s in downsampled]

    df = pd.DataFrame(values, index=names, columns=names)

    print(f"--- num_hash: {num_hash}, molecule: {molecule}, "
          f"ks§ize: {ksize} ---")
    print(f"Time to filter on ksize and molecule: {t1-t0:.2}s")
    print(f"Time to downsample on num_hash: {t2-t1:.2}s")
    print(f"Time to write memory-mapped array: {t3-t2:.2}s")
    print(f"Time to compare all pairs: {t4-t3:.2}s")
    return df



@click.command()
@click.argument("filenames", nargs=-1)
@click.option("--log2-num-hashes",
              help=f"Which hash values to compare. Default: {LOG2_NUM_HASHES}",
              default=LOG2_NUM_HASHES)
@click.option("--molecules",
              help=f"Which hash values to compare. Default: {MOLECULES}",
              default=MOLECULES)
@click.option("--ksizes",
              help=f"Which hash values to compare. Default: {KSIZES}",
              default=KSIZES)
@click.option("--outdir",
              help=f"Output directory for csvs",
              default=".")
@click.option("--n-jobs", help=f"Number of processes to use",
              default=8)
def cli(filenames, log2_num_hashes=LOG2_NUM_HASHES, molecules=MOLECULES, ksizes=KSIZES,
        outdir=".", n_jobs=8):
    click.echo(f"Loading {len(filenames)} signature files ...")
    signatures = load_signatures(filenames)

    iterable = itertools.product(log2_num_hashes, molecules, ksizes)

    similarities = Parallel(n_jobs=n_jobs)(
        delayed(downsample_and_compare)(signatures, log2_num_hash,
                                        molecule, ksize)
        for log2_num_hashes, molecule, ksize in iterable)

    iterable = itertools.product(log2_num_hashes, molecules, ksizes)

    for (log2_num_hash, molecule, ksize), df in zip(iterable, similarities):
        filename = f"molecule-{molecule}_ksize-{ksize}_" \
                    "log2numhash-{log2_num_hash}.csv"
        csv = os.path.join(outdir, filename)
        click.echo(f"Writing {csv} ...")
        df.to_csv(csv)
        click.echo("\tDone.")


if __name__ == "__main__":
    cli(sys.argv[1:])
