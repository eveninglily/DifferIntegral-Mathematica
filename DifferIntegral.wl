(* ::Package:: *)

(* :Name: DifferIntegral` *)
(* :Title: Riemann\[Dash]Liouville Differintegral. *)
(* :Author: Evan McIntire *)


(* ::Text:: *)
(*This package provides an implementation of a Differintegral; in this an extension of the Riemann\[Dash]Liouville Integral, combined with a Fractional Derivative implementation.*)


BeginPackage["DifferIntegral`"]

DifferIntegral::usage = "Unified derivative and integral, with support for fractional orders.\nFunction f, with respect to x, \[Alpha]th derivative, and any additional options that should be passed to the inner integration."

(* If \[Alpha] is 0, we return f *)
DifferIntegral[f_, x_, \[Alpha]_, opts___] := Piecewise[{
	{f, \[Alpha] == 0},
	{Module[{a = Ceiling[\[Alpha]]}, D[DifferIntegral[f, x, -(a - \[Alpha]), opts],{x, a}]], \[Alpha] >= 0},
	{(1/Gamma[-\[Alpha]]) * Integrate[(f /. x -> t)(x-t)^(-\[Alpha] -1) ,{t, 0, x}, opts], \[Alpha] <= 0}
}]

EndPackage[]






