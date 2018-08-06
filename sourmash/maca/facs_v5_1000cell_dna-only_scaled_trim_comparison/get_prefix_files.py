# coding: utf-8
import os
import pandas as pd
samples = pd.read_csv('samples.csv')
prefixes = sorted(samples.output.map(os.path.dirname).unique())
def get_files_per_bucket():
    prefix_files = {}
    for prefix in prefixes:
        line_count = get_ipython().getoutput('aws s3 ls --recursive $prefix/ | wc -l')
        n_files = int(line_count[0])
        prefix_files[prefix] = n_files
    return prefix_files
get_ipython().run_line_magic('time', 'prefix_files = get_files_per_bucket()')
def get_files_per_bucket():
    prefix_files = {}
    for prefix in prefixes:
        line_count = get_ipython().getoutput('aws s3 ls --recursive $prefix/ | wc -l')
        n_files = int(line_count[0])
        prefix_files[prefix] = n_files
    return pd.Series(prefix_files)
prefix_files = pd.Series(prefix_files)
prefix_files
prefix_files = pd.Series(prefix_files).sort_index()
