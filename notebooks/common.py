import os


import jupyter_utils



FIGURE_FOLDER = os.path.join('..', 'figures')
DATA_FOLDER = os.path.join('..', 'data')



def get_notebook_basename():
    notebook_path = jupyter_utils.get_notebook_name()
    notebook_basename = os.path.basename(notebook_path).split('.ipynb')[0]
    return notebook_basename


def get_figure_folder():
    notebook_basename = get_notebook_basename()
    figure_folder = os.path.abspath(os.path.join(FIGURE_FOLDER, notebook_basename))
    return figure_folder


def get_data_folder():
    notebook_basename = get_notebook_basename()
    data_folder = os.path.abspath(os.path.join(DATA_FOLDER, notebook_basename))
    return data_folder