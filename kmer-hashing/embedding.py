import holoviews as hv
import pandas as pd
import umap

# Tabula muris key dimensions
TM_KEY_DIMENSIONS = [('cell_ontology_class', 'Cell ontology class'),
                     ('tissue', "Organ"), ('mouse_sex', 'Mouse Sex')]
# Tabula muris metadata columns
TM_METADATA_COLS = ['tissue', 'cell_ontology_class', 'mouse_sex']

def umap_embedding(distances, n_neighbors=5, min_dist=0.3):
    embedding = umap.UMAP(n_neighbors=n_neighbors,
                      min_dist=min_dist,
                      metric='precomputed').fit_transform(distances)
    embedding_df = pd.DataFrame(embedding, index=distances.index,
                                columns=['UMAP_1', 'UMAP_2'])
    return embedding_df


def embedding_to_df(embedding, metadata, cols=TM_METADATA_COLS):
    embedding_df = pd.DataFrame(embedding, index=metadata.index,
                                columns=['UMAP_1', 'UMAP_2'])

    metadata_subset = pd.DataFrame(
        metadata[cols].values,
        index=metadata.index, columns=cols)
    metadata_subset['mouse_sex'] = metadata_subset.index.map(
        lambda x: x.split("_")[-1][0])
    metadata_subset.head()

    embedding_metadata = embedding_df.join(metadata_subset)
    embedding_metadata.index.name = 'cell_id'
    return embedding_metadata


def embedding_to_hv_table(embedding_metadata,
                          key_dimensions=TM_KEY_DIMENSIONS):

    value_dimensions = [("UMAP_1", 'UMAP 1'), ("UMAP_2", "UMAP 2")]
    embedding_hv = hv.Table(embedding_metadata.reset_index(),
                            kdims=key_dimensions,
                            vdims=value_dimensions)
    return embedding_hv