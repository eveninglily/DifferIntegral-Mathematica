# FractionalDerivatives
Fractional Derivative package for Mathematica

# Math Background
Fractional calculus transforms the derivative from a discrete operation into a continuous one, allowing us to take the `q`th derivative for any real number q.

# Code
There are two files, and two main functions.

## `FractionalDerivatives.wl`
`FractionalDerivatives.wl` contains an implementation that arises from experimenting with various functions and the partial derivatives of their taylor polynomials.

The function defined by this file can be used using `FracD[f, {x, q}]` or `FracD[f, x]`.

## TODO: `DifferIntegral.wl`
`DifferIntegral.wl` implements the **Riemann–Liouville** integral; a generalized way to take fractional derivatives.

The function defined by this file can be used using `DI[f, {x, q}]` or `DI[f, x]`, or with `DifferIntegral` instead of `DI`

# TODO
- Support all special derivatives (inverse trig, log, etc.)
- Be fully compatible with D
- Type checks, errors, etc.
- Integration/Anti-derivatives