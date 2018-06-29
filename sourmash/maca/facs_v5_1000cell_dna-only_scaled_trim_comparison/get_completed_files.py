# coding: utf-8
import pandas as pd
samples = pd.read_csv('samples.csv')
samples.head()
pd.options.display.max_columns = 20
samples.head()
samples.output.head()
pd.options.display.max_colwidth = 100
samples.output.head()
import os
samples.output.map(os.path.basename)
samples.output.map(os.path.dirname)
prefixes = samples.output.map(os.path.dirname).unique()
prefixes
def get_completed_files():
    total_files = 0
    for prefix in prefixes:
        line_count = get_ipython().getoutput('aws s3 ls --recursive $prefix | wc -l')
        n_files = int(line_count[0])
        total_files += n_files
    return total_files
get_completed_files()
