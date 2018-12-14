# FractionalDerivatives
Fractional Derivative package for Mathematica

# Math Background
Fractional calculus transforms the derivative from a discrete operation into a continuous one, allowing us to take the `q`th derivative for any real number q.

# Code
This main function, `FracD`, aims to be completely interchangable with `D`.

Right now, the following forms are (mostly) compatible:
- `D[f,x]`
- `D[f, {x, n}]`

# TODO
- Support all special derivatives (inverse trig, log, etc.)
- Be fully compatible with D
- Type checks, errors, etc.
- Integration/Anti-derivatives