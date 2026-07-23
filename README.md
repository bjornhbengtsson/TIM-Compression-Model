[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/bjornhbengtsson/TIM-Compression-Model/blob/main/TIM_Compression_Model.ipynb)

## Problem statement

This project evaluates the compression of two thermal interface material (TIM) layers in a stacked processor assembly:

1. A thin **die bondline TIM** between the processor die and the copper heat spreader.
2. A thicker **spreader TIM** between the copper heat spreader and aluminum.

Although the two interfaces carry the same approximately **4 lbf compressive load**, their contact areas are significantly different:

| Interface | Contact area | Initial BLT | Target BLT |
|---|---:|---:|---:|
| Processor die / copper spreader | 0.300 in² | 0.010 in | 0.005 in |
| Copper spreader / aluminum | 1.400 in² | 0.040 in | 0.025 in |

The copper-spreader interface has approximately **4.67 times** the area of the die interface. Because average pressure is determined by

\[
P = \frac{F}{A},
\]

the same 4 lbf assembly load produces substantially different average pressures:

- **Die interface:** approximately 13.33 psi
- **Copper-spreader interface:** approximately 2.86 psi

The engineering problem is to determine whether the applied assembly load can compress both TIM layers from their initial bondline thicknesses to their target thicknesses without causing unacceptable squeeze-out, insufficient contact, or excessive material displacement.

This model therefore quantifies:

- The average pressure applied to each TIM interface.
- The change in bondline thickness and compressed TIM volume.
- The volume of material displaced as each interface reaches its target thickness.
- The sensitivity of interface pressure to changes in assembly force.
- The geometric squeeze-out implied by an approximate conservation-of-volume assumption.

The model does not assume that pressure alone guarantees the target bondline thickness. Actual TIM compression depends on material-specific behavior, including stiffness, flow characteristics, temperature, loading rate, surface condition, and manufacturing tolerances. Experimental compression data or fixture testing is required to confirm that the selected TIM materials achieve the intended bondlines.

## Model scope

This model calculates average interface pressure, compression geometry,
TIM volume displacement, and idealized squeeze-out under an approximate
volume-conservation assumption.

It does not predict final bondline thickness from applied force unless
material-specific compression data or experimental measurements are supplied.

Results should be validated using a controlled compression fixture before
being used for production design decisions.

## Baseline configuration

| Interface | Material | Area | Initial BLT | Target BLT | Average pressure |
|---|---|---:|---:|---:|---:|
| Die | GEL 8010 | 0.300 in² | 0.010 in | 0.005 in | 13.33 psi |
| Copper spreader | GEL 75 | 1.400 in² | 0.040 in | 0.025 in | 2.86 psi |

Applied load: **4 lbf**

### Baseline assumptions

- No load bypass
- Same resultant force through both interfaces
- Flat and parallel contact surfaces
- Approximately incompressible TIM for geometric volume calculations
- Static and centered applied load
- Average pressure rather than local pressure distribution

## Example output

### Average interface pressure

![Average interface pressure](figures/generated/average_interface_pressure.png)

### Pressure sensitivity to clamp force

![Pressure versus clamp force](figures/generated/pressure_vs_force.png)

### Initial and target bondline thickness

![Bondline thickness comparison](figures/generated/bondline_thickness.png)

### Retained and displaced TIM volume

![TIM volume comparison](figures/generated/tim_volume.png)

## Sharing statement

This repository contains a Jupyter-based TIM compression and squeeze-out
model for the current die and copper-spreader stack. It calculates average
pressure, compression geometry, displaced volume, and force sensitivity.

The current version is a geometric model. Material-specific
pressure-to-bondline behavior still requires experimental validation.