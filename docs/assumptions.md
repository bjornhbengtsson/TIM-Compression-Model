# Model Assumptions

Version 1 uses the following assumptions:

1. A static, centered compressive load is applied.
2. There are no load bypasses.
3. The same resultant force passes through both TIM interfaces.
4. Pressure is represented as the average normal pressure:

   \[
   P = \frac{F}{A}
   \]

5. Contact surfaces are treated as rigid, flat, and parallel.
6. TIM is treated as approximately incompressible for the squeeze-out calculation.
7. No TIM enters holes, cavities, or channels.
8. No air is trapped in the bondline.
9. Temperature-dependent and time-dependent flow are not included in Version 1.
10. Poisson's ratio is not used as the main squeeze-out predictor because the target compressions are large and the gel can flow.
11. Pressure distribution near edges and local surface features is not resolved.
12. The model does not establish a pressure-to-final-thickness relationship without measured or manufacturer-provided constitutive data.

## Consequence

The model is suitable for:

- Force-to-average-pressure calculations
- Compression geometry
- Volume accounting
- Sensitivity studies
- Planning validation tests

It is not yet suitable for:

- Predicting exact final bondline thickness from force alone
- Local stress or edge-bead prediction
- Time-dependent viscoelastic flow
- Temperature-dependent squeeze-out
