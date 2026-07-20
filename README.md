# TIM Compression and Squeeze-Out Model

A shareable engineering notebook for estimating:

- Average pressure at each thermal-interface-material (TIM) interface
- Compression strain and displacement
- TIM volume retained inside the intended contact footprint
- Approximate squeeze-out volume
- Equivalent spread area under a volume-conservation assumption
- Sensitivity to applied clamp force

## Current stack

| Interface | Material | Area (in²) | Initial BLT (in) | Target BLT (in) |
|---|---|---:|---:|---:|
| Die | Parker Chomerics THERM-A-GAP GEL 8010 | 0.300 | 0.010 | 0.005 |
| Copper spreader | Parker Chomerics THERM-A-GAP GEL 75 | 1.400 | 0.040 | 0.025 |

Applied clamp force: **4 lbf**

## Important scope limitation

This Version 1 model calculates average pressure and geometric squeeze-out. It does **not** prove that a given pressure will produce a specific final bondline thickness. That prediction requires material-specific compression/deflection or rheology data, or physical test measurements.

## Run locally

```bash
python -m venv .venv
source .venv/Scripts/activate
python -m pip install --upgrade pip
pip install -r requirements.txt
jupyter lab
```

Then open:

```text
TIM_Compression_Model.ipynb
```

## Run in Google Colab

Upload `TIM_Compression_Model.ipynb` to Google Colab, or open it from the GitHub repository after the repository is published.

## Repository structure

```text
tim-compression-model/
├── README.md
├── TIM_Compression_Model.ipynb
├── requirements.txt
├── LICENSE
├── .gitignore
├── create_project.sh
├── data/
│   ├── material_properties.csv
│   └── experimental_results.csv
├── docs/
│   ├── assumptions.md
│   └── validation_plan.md
├── figures/
│   └── README.md
└── references/
    └── README.md
```

## Suggested development sequence

1. Run the baseline model.
2. Verify the geometry, areas, and force path.
3. Add measured bondline-thickness data.
4. Fit an empirical pressure-to-thickness curve only after enough measurements exist.
5. Tag the first validated release as `v1.0`.

## License

MIT License. Replace the placeholder copyright name in `LICENSE`.
