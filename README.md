# Space Group Studio

An interactive, single file 3D visualiser for all 230 crystallographic space groups. Add atomic sites, generate the symmetry equivalent positions under the space group operations, and inspect the symmetry axes, the unit cell, and a supercell from standard crystallographic viewing directions. The viewer is built with [three.js](https://threejs.org/).

## Live demo

The studio is a self contained `index.html`. To publish it, enable GitHub Pages (Settings, then Pages, deploy from the `main` branch, root folder) and open the resulting URL. You can also just open `index.html` in any browser locally.

## Features

- One worked example structure for every one of the 230 space groups.
- Add your own sites and press Generate to build the full orbit under the selected group's operations.
- Toggle the symmetry axes, the unit cell, and a 2x2x2 supercell.
- Snap to Top (parallel to c), Front (parallel to b), and Left (parallel to a) views, or drag to rotate freely in 3D.
- CPK element colouring.

## Data and provenance

Every example is embedded directly in `index.html` (the `EX` object), so the page needs no server and no external data files to run. The same data is mirrored in `data/examples.json` for reuse.

The 230 worked examples come from four sources:

- 113 from the CCDC CSD teaching subset.
- 104 from the Crystallography Open Database (COD).
- 12 classic prototype structures from the crystallographic literature.
- 1 from the American Mineralogist Crystal Structure Database (AMCSD).

Note on reuse: the 113 examples drawn from the CSD teaching subset are derived from CCDC's freely available teaching set. If you intend to make this repository public, review CCDC's teaching subset terms before redistributing those derived coordinates. The COD, AMCSD, and literature prototype entries are from open sources.

## Repository layout

```
index.html                  Self contained studio (three.js from CDN)
gallery.html                Static gallery of example views
data/
  examples.json             The 230 worked examples (same data embedded in index.html)
  sg_ops.json               Symmetry operations for all 230 space groups
  cif_coverage.json         Teaching subset refcodes available for each space group
scripts/
  build_assets.py           Generate the orthographic view figures (ASE + matplotlib)
  make_views.py             Alternate three view figure generator
  download_cod.sh           Fetch one CIF per space group missing from the teaching subset (COD)
  cod_download_list.csv     The COD accession list used by the downloader
docs/
  coverage_report.md        Teaching subset coverage summary (113 of 230 groups)
  images/                   Figures
```

## Usage

The viewer needs no build step. Open `index.html` in a browser; the only external dependency is the three.js CDN.

To regenerate the figures:

```bash
pip install ase matplotlib numpy
python scripts/build_assets.py
```

To fetch the COD fill CIFs into a local `cod_fill/` folder:

```bash
bash scripts/download_cod.sh
```

## License

No license yet. Without one, default copyright applies and others have no legal right to reuse the code. Add a license before publishing if you want to allow reuse.
