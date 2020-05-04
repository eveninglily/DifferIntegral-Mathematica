# Differintegral

Fractional Derivative and Integral package for Mathematica

# Math Background

Fractional calculus transforms the derivative from a discrete operation into a continuous one, allowing us to take the `q`th derivative for any real number q. This idea can be defined as well, for integrals. They can be combined into a single operation, known as the "Differintegral".

This implementation uses the **Riemann–Liouville** version of the formula. More information can be found about it on [Wikipedia](https://en.wikipedia.org/wiki/Riemann%E2%80%93Liouville_integral).

# Use

Import like a normal Mathematica package. The package name is 
```
DifferIntegral`
```

# Old

These files are outdated, and shouldn't be used if you just care about a working differintegral. Effort will be made to expand these files, as a way to explore what fractional derivatives look like for each class of function.

When I first wrote this, it was to give a presentation on Fractional Derivatives, and play around with Mathematica. The `FractionalDerivatives.wl` implementation is much more limited, and possibly broken, but does produce more understandable derivatives (e.g. for trig functions). These were derived starting by first defining the operation for polynomials, and then representing other functions as taylor series, and analyzing the result.

The function defined by this file can be used using `FracD[f, {x, q}]` or `FracD[f, x]`.
