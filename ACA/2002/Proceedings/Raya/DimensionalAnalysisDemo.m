(* :Title: DimensionalAnalysisDemo *)

(* :Author: Raya Khanin *)

(* :Summary: Performs dimensional analysis based on  \[CapitalPi] theorem *)

(* :Package Version: 1.0 *)

(* :Copyright: *)

(* :Context: DimensionalAnalysisDemo` *)

(* :History: 
			Verions 1.0 by Raya Khanin
 *)

(* :Keywords:  \[CapitalPi] theorem, dimensional analysis, dimension, unit*)

(* :Source: 
	Massey B.S.
	Measures in Science and Engineering: their expression, 
        relation and interpretaion
	1986, Ellis Horwood Ltd, pp.216

*)
	

(* :Warning:  *)

(* :Mathematica Version: 3.0 *)

(* Warning: this package makes use of symbols L, M, T, Ic, K, Mol, Cd *)

(* :Limitation: This is just an excerpt from large package 
    to demonstrate how to do dimensional analysis (using Pi theorem). 
    
    Error checking must be done!
    
    Question of how to deal with named dimensionless variables like Re
*)

(* :Discussion: Symbols L, M, T, Ic, K, Mol, Cd are used in this package. It is not clear whether these sumbols should be protected
and therefore not allowed to be used. 
An alternative, is to use long names for these quantities, like length, mass, time, ecurrent, temperature, mole, candela. 
This option will put restrictions on these names but it will make the meaning of dimensions more transparent to the user. To be decided later on."

*)


BeginPackage["DimensionalAnalysisDemo`", "Miscellaneous`Units`", "Miscellaneous`SIUnits`"]

MakeList::usage = "MakeList[alist_, blist_] returns a list of pairs of all possible combinations of the elements of the arguments."
MyFreeQ::usage="checks whether any subexpression in the expr 
is free from any form from the list";

Map[(Evaluate[#[[1]]]::"usage" =
   StringJoin[ToString[#[[1]]], " is the symbol for basic dimension of ", #[[2]]])&,
	{{L,"length."},{M,"mass."},{T,"time."},
	 {Ic,"electric current."},{K,"thermodynamic temperature."},
	 {Mol,"amount of substance."},
	 {Cd,"luminous intensity (candlepower)."}}
	 ];
	 
dimension::usage = "dimension[expr] returns dimension of expr. For example, 
dimension[time] returns T. dimension[x] returns x if nothing is known about 
x. dimension of a number equals 1. For expressions in physical units, dimension gives answer in basic (or fundamental) units:
dimension[3*Mile/Min]:= L/T."

(* Some physical quantities *)
length::usage="Length";
diameter::usage="Diameter";
velocity::usage = "Velocity";
density::usage = "Density";
viscosity::usage = "Viscosity";
pressure::usage = "Pressure";
force::usage = "Force";
weightperunitmass::usage = "g";
heatcapacity::usage = "Heat capacity";
thermalconductivity::usage = "Thermal Conductivity";

(* dimensions of some of the physical quantities *)
(* geometrical quantities *)
dimension[diameter]^=L; 
dimension[length]^=L; 
dimension[area]^=L^2;
dimension[volume]^=L^3;
dimension[secondmomentumofarea]^=L^4;
dimension[angle]^=1; (* radian, rad *)
dimension[solidangle]^=1;

(* kinematic quantities *)
dimension[time]^=T;
dimension[velocity]^=L/T; 
dimension[speed]^=dimension[speed];
dimension[acceleration]^=L*T^(-2);
dimension[angularvelocity]^=T^(-1);
dimension[angularspeed]^=dimension[angularvelocity];

(* quantities in mechanics *)
dimension[mass]^=M;
dimension[momentofinertia]^=M*L^2;
dimension[force]^=M*L*T^(-2); 
dimension[work]^=M*L^2*T^(-2);
dimension[energy]^=dimension[work];
dimension[power]^=M*L^2*T^(-3);
dimension[torque]^=M*L^2*T^(-2);
dimension[density]^=M*L^(-3); 
dimension[viscosity]^=M*L^(-1)*T^(-1); (* dynamic viscosity *)
dimension[pressure]^=M*L^(-1)*T^(-2); 
dimension[normalstress]^=dimension[pressure];
dimension[shearstress]^=dimension[pressure];
dimension[kinematicviscosity]^=L^2*T^(-1);
dimension[surfacetension]^=M*T^(-2);
dimension[weightperunitmass]^=L*T^(-2);

(* quantities connected with heat *)
dimension[temperature]^=K;
dimension[heat]^=dimension[energy];
dimension[heatcapacity]^=L^2*T^(-2)*K^(-1);
dimension[thermalconductivity]^=M*L*T^(-3)*K^(-1);
dimension[entropy]^=M*L^2*T^(-2)*K^(-1);
dimension[specificentropy]^=dimension[entropy]/dimension[mass];
dimension[gasconstant]^=L^2*T^(-2)*K^(-1);
dimension[heattransfercoefficient]^=M*T^(-3)*K^(-1);

MechanicalBasicUnits:={M, L, T};
ThermodynamicalBasicUnits:={M, L, T, K};
CommonBasicUnits:=MechanicalBasicUnits;
RestrictedSet:={};

NamedDimensionlessPara::usage = "A list of named dimensionless parameters, like Re. 
More parameters are to be added soon."

NamedDimensionlessPara:={Re};

$ToNamedDimensionlessPara::usage="A set of rules for changing certain combinations 
of physical quantities into Named dimensionless parameters. Physical quantities must 
be in a descriptive form (e.g. pressure, rather than p, density rather than \[Rho] etc). This can be
done by applying $ToQuantity rules either default, or defined by user if other notations are employed." 

$ToNamedDimensionlessPara:=Dispatch[{(k_.density*velocity*length/viscosity)^n_.->k*Re^n, 
    k_.*density^n_.*velocity^n_.*length^n_./viscosity^n_.->Re^n, 
    k_.*viscosity/(density*velocity*length)->1/Re}];
$ToQuantity:=
  Dispatch[{p->pressure, l->length, d->length, \[Mu]->viscosity, u->velocity, 
      \[Rho]->density}]; 
      
 $ToQuantity::usage = "A set of rules which defines notations. Default notations
 can always be changed by user. To see defualt notations type $ToQuantity and evaluate it." 
      
FindRecurringSet::usage = "FindRecurringSet[Parameters_List] returns a list of all 
possible recurrsing sets. Recurring set is a set of parameters (or 
quantitites) chosen from Parameters that involve all reference 
magnitudes defines in the global variables CommonBasicUnits. 
(In most mechanical problems, there are 3 parameters in 
recurring set and they contain three reference magnitudes, L, M, T. The default value CommonBasicUnits:={L, M, T}). 
Variables in the recurring set have to be dimensionally independent, i.e. it 
is not possible to construct a dimensionless combinations out of them."

FindRecurringSet::toomanyvarinrecset = "You entered too many parameters which must be in the Recurring Set. Change and try again!";
FindRecurringSet::manyvarinrecset = "Try to decrease the number of parameters which must be in the Recurring Set and try again!";
ParInRecSet::usage="Option in FindRecurringSet to set up any parameters that must be in the .reccurring set"

nondimensionalize::usage = "nondimensionalize[var_, par_List] returns a rule to introduce a dimensionless var based on 
a combination of var and parameters from the par_List: var->var/combination of par. Rule in this form cannot directly
be applied to expressions or equations. It needs slight modification which is not demonstrated here. For examples
with unknown functions like the one in nondimensionaldemo.nb, the rule can directly be applied to demonstrate Pi theorem."

NondimensionalRules::usage = "NondimensionalRules[AllRecSets_List, Parameters_List] returns a set of rules 
for parameters from the list. Every output list (i) contains rules only for 
those parameters from Parameters_List which are not in AllRecSets[[i]]. 
Every rule is of the form OldVar->OldVar/expr, where OldVar on left- and right-hand sides of the rule are not the same. 
OldVar on the right-hand side is a dimensionless form of OldVar on the left-hand side of the rule."
			
CheckForRecSet::usage = "CheckForRecSet[par_List] checks whether par  in the list are dimensionally 
independent. Returns a True or False." 

RulesToDimensionlessPara::usage = "RulesToDimensionlessPara[pars] returns rules to change groups of dimensionless parameters 
to the named dimensionless parameters, like Re. The function first converts systems parameters into their physical quantities, 
using $ToQuantity. Make sure that the notations employed are correct. If you employ notations different from default, simply chang
the $ToQuantity."

Off[General::spell1];
Off[Solve::"svars"];
Off[General::"stop"];

Begin["`Private`"]

protectedfunctions = 
    Unprotect[MakeList, dimension, Studydimensions, FindRecurringSet, 
      nondimensionalize, NondimensionalRules, CheckForRecSet];
		
		
Clear[MakeList];
MakeList[alist_, blist_]:=
    Flatten[Map[Table[Flatten[{alist[[i]], #1}], {i, 1, Length[alist]}]&, 
        blist], 1]; 
        
Clear[MyFreeQ];
MyFreeQ[eqn_, form_List]:= 
  If[FreeQ[FreeQ[eqn, #]&/@form, False], True, False];


			          
$ToBasicDimensions:=Dispatch[{k_?NumberQ*Meter->L, k_?NumberQ*Second->T, k_?NumberQ*Kilogram->M, k_?NumberQ*Ampere->Ic, k_?NumberQ*Kelvin->K, k_?NumberQ*Mole->mol, k_?NumberQ*Candela->Cd}];

dimension[x_Symbol]:=(SI[x] //. $ToBasicDimensions) /; AtomQ[x];
dimension[x_?NumberQ]:=1;
dimension[x_*y_]:=dimension[x]*dimension[y];
dimension[x_/y_]:=dimension[x]/dimension[y];
dimension[x_^n_]:=dimension[x]^n;
dimension[f_'[t_]]:=dimension[f]/dimension[t]  /;  FreeQ[ReservedSymbols, f];
dimension[Derivative[n_][f_][t_]]:=
                dimension[Derivative[n-1][f][t]]/dimension[t] /; 
                  FreeQ[ReservedSymbols, f];
dimension[f_[expr_]]:=dimension[f] /;  FreeQ[ReservedSymbols, f];
dimension[f_[expr_]]:= 1 /; !FreeQ[ReservedSymbols, f];

dimension[expr1__==expr2__]:=dimension[expr1]/dimension[expr2];


Clear[FindRecurringSet];
Options[FindRecurringSet]:={ParInRecSet->{}};

FindRecurringSet[Parameters_List, opts___]:=
Module[{Allchoices, tmp, AllRecSets, j, parinrecset}, 
		Allchoices:={};
		{parinrecset} = {ParInRecSet} /. Flatten[{opts, Options[FindRecurringSet]}];
		If[Length[parinrecset]>Length[CommonBasicUnits], Message[FindRecurringSet::toomanyvarinrecset]; Return[{}]];
		For[j=1,j<=Length[CommonBasicUnits], j++, 
            tmp:=Evaluate[Select[Parameters, !FreeQ[dimension[#], CommonBasicUnits[[j]]]&]
            ];
	       	If[tmp=={}, tmp:={CommonBasicUnits[[j]]}];
		    tmp:=Evaluate[Complement[tmp, RestrictedSet]];
	        Allchoices:=Evaluate[Append[Allchoices, tmp]]];
	        If[Length[Allchoices]>1, 
		          tmp:=Fold[MakeList, Allchoices[[1]], Rest[Allchoices]], 
		          tmp:=Table[{Allchoices[[1]][[j]]}, {j, 1, Length[Allchoices[[1]]]}]
		     ];   
		     AllRecSets:=Evaluate[Select[tmp, Evaluate[Length[Union[#1]]]==Length[CommonBasicUnits]&]];
		     AllRecSets:=Evaluate[Select[AllRecSets, CheckForRecSet[#]&]];
		     If[parinrecset!={}, AllRecSets:=Evaluate[Select[AllRecSets, (Intersection[#, parinrecset]===parinrecset)&]]];
		     If[AllRecSets==={} && parinrecset!={}, Message[FindRecurringSet::manyvarinrecset]; Return[{}], Return[Union[Union[#]&/@AllRecSets]]]
	];


Clear[nondimensionalize];
nondimensionalize[var_List, par_List]:=Map[nondimensionalize[#1, par]&, var];
nondimensionalize[var_, par_List]:= 
Module[{expr, eqns, anames, asol}, 
	anames:=Table[ToExpression[StringJoin["a", Evaluate[ToString[i]]]], {i, 1, Length[CommonBasicUnits]}]; 
	expr:=Fold[Times, 1, MapThread[dimension[#1]^#2&, {par, anames}]]*dimension[var] //PowerExpand;
	eqns:=Exponent[expr, #1]==0&/@CommonBasicUnits;
	asol:=Evaluate[Flatten[Solve[eqns, anames]]];
	expr:=var*(Fold[Times, 1, MapThread[#1^#2&, {par, anames}]] /. asol);
Return[var->expr]
];



Clear[NondimensionalRules];
NondimensionalRules[AllRecSets_List, Parameters_List]:=
Module[{Partonondim, AllNonDimRules},
	Partonondim:=Complement[Parameters, #]&/@AllRecSets; (* these are parameters which are not in the recurring set *)
	AllNonDimRules:=MapThread[nondimensionalize[#1, #2]&, {Partonondim, AllRecSets}];
Return[AllNonDimRules]
]; 

Clear[CheckForRecSet];
CheckForRecSet[par_List]:=Module[{anames, expr, eqns, asol},
	anames:=Table[ToExpression[StringJoin["a", Evaluate[ToString[i]]]], {i, 1, Length[CommonBasicUnits]}];
	expr:=Fold[Times, 1, MapThread[dimension[#1]^#2&, {par, anames}]] //PowerExpand;
	eqns:=(Exponent[expr, #1]==0&)/@CommonBasicUnits;
	asol:=Evaluate[Flatten[Solve[eqns, anames]]];
	If[Select[Evaluate[anames/.asol], #1!=0&]==={}, Return[True], Return[False]]
];
		
		
Clear[RulesToDimensionlessPara];
RulesToDimensionlessPara[pars_]:=
	Module[{tmp, j, theserules},
		j:=1;
		theserules:={};
		While[j<=Length[pars],
			          tmp:=pars[[j]] //. $ToQuantity //. $ToNamedDimensionlessPara;
			          If[!MyFreeQ[tmp, NamedDimensionlessPara],  
        theserules:=Evaluate[Append[theserules, pars[[j]]->tmp]];
				];
			j++
				];
			Return[theserules]
			];
  				
Protect[Evaluate[protectedfunctions]];
End[];
EndPackage[];

