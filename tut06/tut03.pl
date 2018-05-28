parent(fritz, eva).
parent(erich, conrad).
parent(eva, conrad).
parent(conrad, berti).
parent(claudia, berti).
parent(dennis, beate).
parent(dora, beate).
parent(berti, albert).
parent(beate, albert). 

male(fritz).
male(erich).
male(conrad).
male(berti).
male(albert).
male(dennis).
female(eva).
female(claudia).
female(dora).
female(beate).

father(F, C) :- male(F), parent(F, C).
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X,Z), ancestor(Z,Y).
/*The order in the next clause causes an out-of-stack exception.*/
/*ancestor(X, Y) :- ancestor(X,Z), parent(Z,Y).*/

female_ancestor(X, Y) :- female(X), ancestor(X,Y).

