(* ::Package:: *)

(* ::Title:: *)
(*Fractional Derivatives*)


(* ::Text:: *)
(*This package contains a Fractional Derivative function that extends D to real values.*)
(**)
(*This file contains naive implementations that more explicitly show these relationships and how they arise naturally from basic definitions.*)


(* ::Item:: *)
(*Operators*)


(* ::Input::Initialization:: *)
FracD::usage="FracD[f, x] gives the partial derivative \[PartialD]f/\[PartialD]x.\nFracD[f, {x, q}] gives the multiple derivative \!\(\*SuperscriptBox[\(\[PartialD]\), \(q\)]\)f/\[PartialD]\!\(\*SuperscriptBox[\(x\), \(q\)]\)";

(* Defaults for compatibility with D *)
FracD[f_, x_] := FracD[f, {x, 1}]

(* For Linearity *)
FracD[f_+g_,{x_, q_}] := FracD[f, {x, q}] + FracD[g, {x, q}]
FracD[c_*f_, {x_, q_}] := c*FracD[f,{x, q}]/;FreeQ[c,x]

(* Definitions *)

(* x^n terms *)
FracD[x_^n_., {x_, q_}] := (Gamma[n + 1]/Gamma[n-q + 1])*x^(n-q)

(* Constants *)
FracD[c_, {x_, q_}] := c*(Gamma[1]/Gamma[-q + 1])*x^(-q)/;FreeQ[c, x]

(* Sin and Cos *)
(* TODO: Chain rule has to be more nuanced than this *)
FracD[Sin[f_], {x_, q_}] := FracD[f, {x, q}] * Sin[f + \[Pi]/2]
FracD[Cos[f_], {x_, q_}] := FracD[f, {x, q}] * Cos[f + \[Pi]/2]

(* Sin and Cis with constants *)
FracD[Sin[c_*f_], {x_, q_}] := c^q * FracD[f, {x, q}] * Sin[c*f + \[Pi]/2]/;FreeQ[c, x]
FracD[Cos[c_*f_], {x_, q_}] := c^q * FracD[f, {x, q}] * Cos[c*f + \[Pi]/2]/;FreeQ[c, x]

(* Exp *)
(* TODO: broken *)
FracD[Exp[f_], {x_, q_}] := FracD[f, {x, q}] * Exp[c*f]
FracD[Exp[c_*f_], {x_, q_}] := c^q * FracD[f, {x, q}] * Exp[c*f]/;FreeQ[c, x]
