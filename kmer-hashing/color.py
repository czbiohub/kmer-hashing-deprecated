import holoviews as hv


__all__ = ['color_cycle']


cat20c = hv.Cycle("Category20c")
cat20b = hv.Cycle("Category20b")

new_palette = cat20b.values + cat20c.values

color_cycle = hv.Cycle(new_palette)