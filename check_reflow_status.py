# coding: utf-8
reflow_dirs = '/home/olga/code/kmer-hashing/sourmash/compare_no_track_abundance', '/home/olga/code/kmer-hashing/sourmash/compare', '/home/olga/code/tick-genome/pre_assembly_qc/full_workflow', '/home/olga/code/kmer-hashing/sourmash/search', '/home/olga/code/kmer-hashing/sourmash/lung_cancer_v4/search_tabula-muris-k51-protein/'

for reflow_dir in reflow_dirs:
    print(reflow_dir)
    listbatch = get_ipython().getoutput('cd $reflow_dir && reflow listbatch')
    n_statuses = {}
    for status in statuses:
        n_statuses[status] = sum(1 for x in listbatch if x.endswith(status))
    
    other_statuses = set([' '.join(x.split()[-4:]) for x in listbatch if not any(x.endswith(s) for s in statuses)])
    n_others = {}
    for other in other_statuses:
        n_others[other] = sum(1 for x in listbatch if x.endswith(other))
    n_total = len(listbatch)
    
    for status, n in n_statuses.items():
        print(f'\t{status}: {n}/{n_total}')

    print(f'\tOther statuses:')
    for other, n in n_others.items():
        print(f'\t{other}: {n}/{n_total}')

            
