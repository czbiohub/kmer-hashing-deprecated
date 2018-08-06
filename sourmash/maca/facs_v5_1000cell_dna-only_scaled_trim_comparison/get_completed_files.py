# coding: utf-8
import os
import pandas as pd

samples = pd.read_csv('samples.csv')

prefixes = samples.output.map(os.path.dirname).unique()

def get_completed_files():
    total_files = 0
    for prefix in prefixes:
        line_count = get_ipython().getoutput('aws s3 ls --recursive $prefix/ | wc -l')
        n_files = int(line_count[0])
        total_files += n_files
    return total_files

def get_files_per_prefix():
    prefix_files = {}
    for prefix in prefixes:
        line_count = get_ipython().getoutput('aws s3 ls --recursive $prefix/ | wc -l')
        n_files = int(line_count[0])
        prefix_files[prefix] = n_files
    return pd.Series(prefix_files)


get_ipython().run_line_magic('time', 'prefix_files = get_files_per_prefix()')
n_files = prefix_files.sum()
n_total = samples.shape[0]
percentage = 100 * n_files/n_total
print(f'\tNumber of signatures computed: {n_files:,} ({percentage:.2f}% of total {n_total:,})')
print(prefix_files)
