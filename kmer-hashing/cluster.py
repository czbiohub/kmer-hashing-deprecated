import warnings

import louvain
import numpy as np
from scanpy.neighbors import compute_neighbors_umap,\
    compute_connectivities_umap
from scanpy.utils import get_igraph_from_adjacency


def louvain_cluster(distances, n_neighbors=5, random_state=0, resolution=None):
    """Perform scanpy-style louvain clusterings on precomputed distances"""
    knn_indices, knn_dists = compute_neighbors_umap(
        distances.values, n_neighbors, random_state=0, metric='precomputed',
        verbose=True)

    n_obs = distances.shape[0]

    distances, adjacency = compute_connectivities_umap(
        knn_indices, knn_dists, n_obs=n_obs, n_neighbors=n_neighbors)

    g = get_igraph_from_adjacency(adjacency, directed=True)

    if resolution is None: resolution = 1
    try:
        warnings.info('\tusing the "louvain" package of Traag (2017)')
        louvain.set_rng_seed(random_state)
        part = louvain.find_partition(
            g, louvain.RBConfigurationVertexPartition,
            resolution_parameter=resolution)
    except AttributeError:
        warnings.warn('Did not find package louvain>=0.6, '
                  'the clustering result will therefore not '
                  'be 100% reproducible, '
                  'but still meaningful. '
                  'If you want 100% reproducible results, '
                  'update via "pip install louvain --upgrade".')
        part = louvain.find_partition(g, method='RBConfiguration',
                                      resolution_parameter=resolution)
    groups = np.array(part.membership)
    return groups


