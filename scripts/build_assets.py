import json
import numpy as np
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
from ase.spacegroup import crystal
from ase.visualize.plot import plot_atoms

OUT = '.'


def make_cell(symbols, basis, sg, a):
    return crystal(symbols, basis=basis, spacegroup=sg, cellpar=[a, a, a, 90, 90, 90])


# ---- structures (basis positions from standard Wyckoff sites) ----
diamond = make_cell('C', [(0, 0, 0)], 227, 3.567)
garnet = make_cell(['Ca', 'Al', 'Si', 'O'],
                   [(1/8, 0, 1/4), (0, 0, 0), (3/8, 0, 1/4),
                    (0.0381, 0.0453, 0.6515)], 230, 11.85)
f4132 = make_cell('Na', [(0.1, 0.15, 0.2)], 210, 8.0)

# ---- (1) three-view plot, smaller spheres for F4_132 so pattern shows ----
panels = [('Diamond  C  Fd-3m (No. 227)', diamond, 0.5),
          ('Garnet  Ca3Al2Si3O12  Ia-3d (No. 230)', garnet, 0.4),
          ('F4_132 (No. 210): one general orbit = 96 points', f4132, 0.22)]
views = [('Left  (view || x)', '-90x,-90y'),
         ('Front (view || y)', '-90x'),
         ('Top   (view || z)', '')]

fig, axes = plt.subplots(3, 3, figsize=(12, 12))
for i, (title, atoms, rad) in enumerate(panels):
    for j, (vname, rot) in enumerate(views):
        ax = axes[i][j]
        plot_atoms(atoms, ax, rotation=rot, radii=rad, show_unit_cell=2)
        ax.set_title(vname, fontsize=10)
        ax.set_axis_off()
    axes[i][0].text(-0.12, 0.5, title, transform=axes[i][0].transAxes,
                    rotation=90, va='center', ha='center',
                    fontsize=10, fontweight='bold')
fig.suptitle('Three orthographic views of complex cubic space groups', fontsize=14)
plt.tight_layout()
plt.savefig(f'{OUT}/space_group_three_views.png', dpi=130, bbox_inches='tight')

# ---- (2) export centred Cartesian coordinates as JSON for the website ----


def export(name, cell, a, meta):
    pos = cell.get_positions() - a / 2.0
    atoms = [{'e': s, 'x': round(float(p[0]), 4), 'y': round(float(p[1]), 4),
              'z': round(float(p[2]), 4)}
             for s, p in zip(cell.get_chemical_symbols(), pos)]
    d = {'name': name, 'a': a, 'natoms': len(atoms), 'atoms': atoms}
    d.update(meta)
    return d


data = []
data.append(export('Rock salt  NaCl', make_cell(['Na', 'Cl'], [(0, 0, 0), (0.5, 0, 0)], 225, 5.64), 5.64,
                   {'symbol': 'Fm-3m', 'number': 225, 'lattice': 'Face-centred cubic (F)',
                    'point': 'm-3m  (order 48)', 'mult': 192,
                    'note': 'Two interpenetrating FCC lattices. A gentle symmorphic reference.'}))
data.append(export('Fluorite  CaF2', make_cell(['Ca', 'F'], [(0, 0, 0), (0.25, 0.25, 0.25)], 225, 5.46), 5.46,
                   {'symbol': 'Fm-3m', 'number': 225, 'lattice': 'Face-centred cubic (F)',
                    'point': 'm-3m  (order 48)', 'mult': 192,
                    'note': 'Ca on an FCC lattice; F fills every tetrahedral hole.'}))
data.append(export('Diamond  C', diamond, 3.567,
                   {'symbol': 'Fd-3m', 'number': 227, 'lattice': 'Face-centred cubic (F)',
                    'point': 'm-3m  (order 48)', 'mult': 192,
                    'note': 'Diamond glide (d) makes it non-symmorphic. Silicon and spinel share this group.'}))
data.append(export('Garnet  Ca3Al2Si3O12', garnet, 11.85,
                   {'symbol': 'Ia-3d', 'number': 230, 'lattice': 'Body-centred cubic (I)',
                    'point': 'm-3m  (order 48)', 'mult': 96,
                    'note': 'Frequently called the most complex space group: I-centring, 4_1 screws and d-glides. 160 atoms per cell.'}))
data.append(export('F4_132 general orbit', f4132, 8.0,
                   {'symbol': 'F4_132', 'number': 210, 'lattice': 'Face-centred cubic (F)',
                    'point': '432  (order 24)', 'mult': 96,
                    'note': 'One generic point generates its full 96-point orbit, equal to the order of the group. Chiral: no mirrors or inversion.'}))

with open(f'{OUT}/structures.json', 'w') as f:
    json.dump(data, f)

print('plot: space_group_three_views.png')
print('json:', [(d['name'], d['natoms']) for d in data])
