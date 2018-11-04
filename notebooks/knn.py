import networkx as nx
import pandas as pd
from sklearn.neighbors import NearestNeighbors

import sourmash_utils


def _compute_neighbor_adjacencies(data, n_neighbors=5):
    # Convert to distances by subtracting from 1
    X = 1 - data
    nbrs = NearestNeighbors(n_neighbors=n_neighbors, metric='precomputed').fit(X)
    distances, indices = nbrs.kneighbors(X)
    
    # Replace integers with cell ids
    neighbor_indices = pd.DataFrame(indices, index=X.index)
    neighbor_indices = neighbor_indices.applymap(lambda x: X.index[x])
    
    # Make (cell_1, cell_2) adjacency list
    neighbor_indices_tidy = neighbor_indices.unstack()
    neighbor_indices_tidy = neighbor_indices_tidy.reset_index()
    neighbor_indices_tidy = neighbor_indices_tidy.drop(columns='level_0')
    return neighbor_indices_tidy.values


def add_color_cols(metadata, color_cols=['cell_ontology_class'], 
                           palettes=dict(cell_ontology_class='tab10')):
    """Add a hexadecimal color for the categorical values in color_cols"""
    for col in color_cols:
        palette = palettes[col]    
        colors = sourmash_utils.category_colors(metadata[col], 
                                   palette=palette)
        new_col = f'{col}_color'
        metadata[new_col] = colors
    return metadata


def nearest_neighbor_graph(data, metadata, n_neighbors=5, 
                           color_cols=['cell_ontology_class'], 
                           palettes=dict(cell_ontology_class='tab10')):
    metadata = add_color_cols(metadata, color_cols=color_cols, palettes=palettes)
    
    G = nx.Graph()
    nodes = [(cell_id, attr.to_dict()) for cell_id, attr in metadata.iterrows()]
    G.add_nodes_from(nodes)
    
    neighbor_adjacencies = _compute_neighbor_adjacencies(data, n_neighbors=n_neighbors)
    G.add_edges_from(neighbor_adjacencies)
    return G

def draw_graph(G, color_col='cell_ontology_class_color', edge_color='black', 
               **kwargs):
    if 'pos' not in kwargs:
        kwargs['pos'] = nx.spring_layout(G)
    
    return nx.draw(G, node_color=[d[color_col] for v, d in G.nodes(data=True)], 
                   alpha=0.5, **kwargs)
