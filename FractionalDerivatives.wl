(* ::Package:: *)

(* ::Title:: *)
(*Fractional Derivatives*)


(* ::Text:: *)
(*This package contains a Fractional Derivative function that extends D to real values.*)


(* ::Item:: *)
(*Operators*)


(* ::Input::Initialization:: *)
FracD::usage="Takes the qth Fractional Derivative";

(* Defaults for compatibility with D *)
FracD[f_, x_] := FracD[f, {x, 1}]

(* For Linearity *)
FracD[f_+g_,{x_, q_}] := FracD[f, {x, q}] + FracD[g, {x, q}]
FracD[c_*f_, {x_, q_}] := c*FracD[f,{x, q}]/;FreeQ[c,x]

(* Definitions *)
FracD[x_^n_., {x_, q_}] := (Gamma[n + 1]/Gamma[n-q + 1])*x^(n-q)
FracD[c_, {x_, q_}] := c*(Gamma[1]/Gamma[-a + 1])*x^(-q)/;FreeQ[c, x]
