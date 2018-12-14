# FractionalDerivatives
Fractional Derivatives package for Mathematica

# Math Background
Fractional derivatives generalize the idea of the derivative to real numbers. This means we can take the 1/2 derivative, 2.4th, etc.

# Code
This main function, `FracD`, aims to be completely interchangable with `D`.

Right now, the following forms are (mostly) compatible:
- `D[f,x]`
- `D[f, {x, n}]`

# TODO
- Support all special derivatives (inverse trig, log, etc.)
- Be fully compatible with D