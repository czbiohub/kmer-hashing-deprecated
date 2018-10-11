import pandas as pd


def extract_cell_metadata(columns,  pattern='(?P<column>\w+):(?P<value>[\w-]+)'):
    extracted = pd.Series(columns).str.extractall(pattern)
    cell_metadata = extracted.reset_index().pivot(
        index='level_0', columns='column', values='value')
    return cell_metadata


def to_key_value_pair(attribute):
    if len(attribute) > 1:
        try:
            return attribute[0], int(attribute[1])
        except ValueError:
            return attribute[0], attribute[1] 
    else:
        return 'comparison_sequence', attribute[0]



def extract_experiment_metadata(basename):
    key = basename.split('.csv')[0]
    split = key.split('_')
    attributes = [x.split('=') for x in split]
    attributes = dict(to_key_value_pair(x) for x in attributes)
    return key, attributes