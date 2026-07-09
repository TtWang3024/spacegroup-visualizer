import numpy as np
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
from ase.spacegroup import crystal
from ase.visualize.plot import plot_atoms

structures = []

# Diamond Fd-3m #227
a_d = 3.567
diamond = crystal('C', [(0,0,0)], spacegroup=227, cellpar=[a_d,a_d,a_d,90,90,90])
structures.append(('Diamond  C  Fd-3m (No. 227)', diamond, 0.5))

# Garnet (grossular) Ia-3d #230
a_g = 11.85
gross = crystal(['Ca','Al','Si','O'],
    basis=[(1/8,0,1/4),(0,0,0),(3/8,0,1/4),(0.0381,0.0453,0.6515)],
    spacegroup=230, cellpar=[a_g,a_g,a_g,90,90,90])
structures.append(('Garnet  Ca3Al2Si3O12  Ia-3d (No. 230)', gross, 0.4))

# F4_132 #210 general-orbit illustration
a_f = 8.0
f432 = crystal('Na', [(0.1,0.15,0.2)], spacegroup=210, cellpar=[a_f,a_f,a_f,90,90,90])
structures.append(('F4_132 (No. 210): one general orbit', f432, 0.45))

views = [('Left  (view || x)', '-90x,-90y'),
         ('Front (view || y)', '-90x'),
         ('Top   (view || z)', '')]

nrows = len(structures)
fig, axes = plt.subplots(nrows, 3, figsize=(12, 4*nrows))
for i,(title, atoms, rad) in enumerate(structures):
    for j,(vname, rot) in enumerate(views):
        ax = axes[i][j]
        plot_atoms(atoms, ax, rotation=rot, radii=rad, show_unit_cell=2)
        ax.set_title(vname, fontsize=10)
        ax.set_axis_off()
    axes[i][0].text(-0.12, 0.5, title, transform=axes[i][0].transAxes,
                    rotation=90, va='center', ha='center', fontsize=10, fontweight='bold')
fig.suptitle('Three orthographic views of complex cubic space groups', fontsize=14)
plt.tight_layout()
plt.savefig('./space_group_three_views.png', dpi=130, bbox_inches='tight')
print('COUNTS:', [(t.split()[0], len(a)) for t,a,r in structures])
