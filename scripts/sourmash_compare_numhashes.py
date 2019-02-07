import glob
import itertools

from scipy.spatial.distance import squareform
from sourmash import signature as sig
from tqdm import tqdm


KSIZES = 21, 27, 33, 51
MOLECULES = 'dna', 'protein'
NUM_HASHES = 500, 1000, 2000, 5000, 10000, 20000, 50000, 10000


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
    iterator = itertools.combinations(range(n), 2)

    if n_jobs is None:
        values = _compare_serial(siglist, iterator)
    else:
        # This creates a condensed distance matrix
        condensed = Parallel(n_jobs=n_jobs)(
            delayed(jaccard_utils.jaccard_sigs)(i, j, siglist) for i, j in
            iterator)
        values = squareform(condensed)

    return values


def downsample_and_compare(signatures, num_hash, molecule, ksize):
    t0 = time.time()
    filtered = filter_siglist(signatures, ksize, molecule)
    t1 = time.time()
    downsampled = [s.minhash.downsample_n(num_hash) for s in filtered]
    t2 = time.time()
    values = compare_all_pairs(downsampled)
    t3 = time.time()

    names = [s.name().split('|')[0] for s in downsampled]

    df = pd.DataFrame(values, index=names, columns=names)

    print(f"--- num_hash: {num_hash}, molecule: {molecule}, "
          "ksize: {ksize} ---")
    print(f"Time to filter on ksize and molecule: {t1-t0:.2}s")
    print(f"Time to downsample on num_hash: {t2-t1:.2}s")
    print(f"Time to compare all pairs: {t3-t2:.2}s")
    return df



@click.command()
@click.argument("filenames")
@click.option("--num-hashes",
              help=f"Which hash values to compare. Default: {NUM_HASHES}",
              default=NUM_HASHES)
@click.option("--molecules",
              help=f"Which hash values to compare. Default: {MOLECULES}",
              default=MOLECULES)
@click.option("--ksizes",
              help=f"Which hash values to compare. Default: {KSIZES}",
              default=KSIZES)
@click.option("--outdir",
              help=f"Output directory for csvs",
              default=".")
def cli(filenames, num_hashes=NUM_HASHES, molecules=MOLECULES, ksizes=KSIZES,
        outdir="."):
    signatures = load_signatures(filenames)

    iterable = itertools.product(num_hashes, molecules, ksizes)

    similarities = Parallel(n_jobs=n_jobs)(
        delayed(downsample_and_compare)(signatures, num_hash, molecule, ksize)
        for num_hash, molecule, ksize in iterable)

    iterable = itertools.product(num_hashes, molecules, ksizes)

    for (num_hash, molecule, ksize), values in zip(iterable, similarities):
        filename = f"molecule-{molecule}_ksize-{ksize}_numhash-{num_hash}.csv"
        csv = os.path.join(outdir, filename)
        click.echo("Writing {csv} ...")
        df.to_csv(csv)
        click.echo("\tDone.")