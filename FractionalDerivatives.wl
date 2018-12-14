(* ::Package:: *)

(* ::Title:: *)
(*Fractional Derivatives*)


(* ::Text:: *)
(*This package contains a Fractional Derivative function that extends D to real values.*)


(* ::Item:: *)
(*Operators*)


(* ::Input::Initialization:: *)
FracD::usage="Takes the \!\(\*SuperscriptBox[\(a\), \(th\)]\)Fractional Derivative";

FracD[f_+g_,a] := FracD[f, a] + FracD[g, a]
FracD[c_*f_, a_] := c*FracD[f,a]/;FreeQ[c,x]
FracD[c_, a_] := c*(Gamma[1]/Gamma[-a + 1])*x^(-a)/;FreeQ[c, x]
FracD[x^n_., a_] := (Gamma[n + 1]/Gamma[n -a + 1])*x^(n-a)
