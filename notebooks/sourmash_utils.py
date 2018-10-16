from fastcluster import linkage
from matplotlib.colors import rgb2hex
import numpy as np
import pandas as pd
from polo import optimal_leaf_ordering
from scipy.spatial.distance import pdist
import seaborn as sns


from extract_metadata import extract_cell_metadata

keys_for_length = ('mins',)

keys_for_values = ('ksize', 'molecule')

keys_to_print = keys_for_length + keys_for_values

BLADDER_CELL_ID = '10X_P4_3_GCGAGAACACATGGGA'
TISSUE_CHANNEL = 'bladder-10X_P4_3_'

PALETTE_NAMES = 'tab10',  'Set2',  'tab20', 'Set3',  'tab20b', 'Accent', 'tab20c',   'Dark2', 'Paired', 'Pastel1', 'Set1', 'Pastel2'

METADATA_COL = ['cell_ontology_class', 'free_annotation']


def summarize(signature):
    data = []
    for sig in signature['signatures']:
        d = dict(name=signature['name'])
        for key, value in sig.items():
            if key not in keys_to_print:
                continue

            if key in keys_for_length:
                v = len(value)
                k = 'n_' + key
            elif key in keys_for_values:
                v = value
                k = key
            d[k] = v
        data.append(d)
    return data


def get_single_cell(cell_id, matrix, metadata):
    cell = matrix.loc[:, cell_id].to_frame()
    cell.columns = ['similarity']
    cell.index = metadata.index
    cell = cell.join(metadata)
    cell = cell.sort_values('similarity', ascending=False)
    return cell





def single_category_colors(categories, palette):
    """Convert a series of categories to colors"""
    unique = sorted(categories.unique(), 
                    key=lambda x: x.lower() if isinstance(x, str) else x)
    n_unique = len(unique)
    colors = [rgb2hex(x) for x in sns.color_palette(palette, n_colors=n_unique)]
    
    category_to_color = dict(zip(unique, colors))
    
    data = [category_to_color[c] for c in categories]
    item_to_color = pd.Series(data, index=categories.index)
    item_to_color[pd.isnull(categories)] = '#262626'
    return item_to_color

def category_colors(categories, palette):
    """Convert a dataframe of categories to colors
    
    Params
    ------
    categories : pandas.DataFrame or pandas.Series
    palette : string or dict
        If a string, then "categories" must be a Series and this only labels one series
        If a dict, then corresponds to the column names of "categories" dataframe
    """
    item_to_color = None
    if isinstance(categories, pd.DataFrame):
        if palette is None:
            palette = dict(zip(categories.columns, PALETTE_NAMES))
        data = [single_category_colors(categories[col], palette[col]) for col in categories]
        item_to_color = pd.concat(data, axis=1)
    elif isinstance(categories, pd.Series):
        item_to_color = single_category_colors(categories, palette)
        
    return item_to_color



BETWEENS = ('rows', 'cols')

def calculate_linkage(data, metric, method, between='cols'):
    assert between in BETWEENS

    if between == 'rows':
        data = data.T

    D = pdist(data, metric)
    Z = linkage(D, method)

    optimal_Z = optimal_leaf_ordering(Z, D)
    return optimal_Z


def plaidplot(data, row_categories=None, col_categories=None, row_palette=None, 
              col_palette=None, metric='euclidean', method='ward', xticklabels=[],
              yticklabels=[], **kwargs):
    
    col_linkage = calculate_linkage(data, metric, method, between='cols')
    row_linkage = calculate_linkage(data, metric, method, between='rows')
    
    row_colors = category_colors(row_categories, row_palette)
    col_colors = category_colors(col_categories, col_palette)
    
    g = sns.clustermap(data, col_linkage=col_linkage, row_linkage=row_linkage, 
                       row_colors=row_colors, col_colors=col_colors, 
                       xticklabels=xticklabels, yticklabels=yticklabels,
                       **kwargs)
    return g

def plaidplot_square(data, metadata, metadata_col='cell_ontology_class'):
    categories = metadata[metadata_col]

    vmax = data.replace(1, np.nan).max().max()

    return plaidplot(data, 
              col_categories=categories,
              row_categories=categories, vmax=vmax)


def facet_distplot(df, x='similarity', hue='cell_ontology_class'):
    g = sns.FacetGrid(df, hue=hue)

    vmax = df[x].replace(1, np.nan).max().max()
    # add a bit of left and right padding so it looks nice
    buffer = vmax*0.05

    g.map(sns.distplot, x, hist=False, kde_kws=dict(shade=True))
    g.add_legend()
    g.set(xlim=(-buffer, vmax+buffer))
    return g


def plaidplot_and_distplot(data, metadata, name, ksize, ignore_abundance, 
                           molecule, metadata_col=METADATA_COL, 
                           cell_id=BLADDER_CELL_ID, 
                           tissue_channel=TISSUE_CHANNEL):
    plaidplot_grid = plaidplot_square(data, metadata, metadata_col=metadata_col)
    fig_prefix = f'{tissue_channel}_{name}_k{ksize}_{molecule}_ignore-abundance={ignore_abundance}'
    png = f'../figures/{fig_prefix}_clustermap.png'
    plaidplot_grid.ax_col_dendrogram.set(title=fig_prefix)
    plaidplot_grid.savefig(png, dpi=300)

    df = get_single_cell(cell_id, data, metadata)
    df['name'] = name
    df['ksize'] = ksize
    df['ignore_abundance'] = ignore_abundance

    distplot_grid = facet_distplot(df)
    pdf = f'../figures/{fig_prefix}_cell={cell_id}_distplot.pdf'
    distplot_grid.ax.set(title=fig_prefix)
    distplot_grid.savefig(pdf)
    return df


def read_compare(csv, pattern='(?P<column>\\w+):(?P<value>[\\w-]+)', 
                 metadata_cols=['cell_ontology_class', 'tissue', 
                                'mouse_id', 'cell_id']):

    compare = pd.read_csv(csv)

    cell_ids = compare.columns.str.split('|').str[-1]
    cell_ids = cell_ids.str.split(':').str[-1]

    try:
        metadata = extract_cell_metadata(
            compare.columns, pattern='(?P<column>\\w+):(?P<value>[\\w-]+)')
        metadata.index = cell_ids
    except ValueError:
        # metadata is pipe-separated
        # 'leukocyte|Lung|3-F-56|10X_P7_8_GAACATCTCTTGAGGT'
        
        # input data has to be a list of lists
        data = list(compare.columns.str.split('|').values)
        metadata = pd.DataFrame(data, columns=metadata_cols)
        metadata = metadata.set_index('cell_id')

    compare.index = compare.columns = cell_ids
    return compare, metadata