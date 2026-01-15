goat(goat).
wolf(wolf).

% a.De la dong vat an co
anCo(goat).
% Soi la dong vat an thit
anThit(wolf).
% b.Soi la dong vat hung du
hungDu(X) :- wolf(X).
% c.Dong vat hung du la dong vat an thit
hungDu(X) :- anThit(X).
% d.Dong vat an thit thi an thit
eats(X, meat) :- anThit(X).
% e.Dong vat an co thi an co
eats(X, grass) :- anCo(X).
% f.Dong vat an thit thi an dong vat an co
eats(X, Y) :- anThit(X), anCo(Y).
% g.Dong vat an thit va an co deu uong nuoc
drinks(X, water) :- anThit(X).
drinks(X, water) :- anCo(X).
% h.Moi dong vat tieu thu cai no uong hoac an
consumes(X, Y) :- eats(X, Y).
consumes(X, Y) :- drinks(X,Y).


