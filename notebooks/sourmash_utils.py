
keys_for_length = ('mins',)

keys_for_values = ('ksize', 'molecule')

keys_to_print = keys_for_length + keys_for_values

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