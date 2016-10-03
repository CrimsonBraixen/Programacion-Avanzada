hombre(pedro).
hombre(manuel).
hombre(arturo).
mujer(maría).
padre(pedro, manuel).
padre(pedro, arturo).
padre(pedro, maría).

niño(X,Y):-padre(Y,X).
hijo(X,Y):-padre(Y,X),hombre(X).
hija(X,Y):-padre(Y,X),mujer(X).
hermano_o_hermana(X,Y):-padre(Z,X),padre(Z,Y),dif(X,Y).
hermano(X,Y):-padre(Z,X),padre(Z,Y),dif(X,Y),hombre(X).
hermana(X,Y):-padre(Z,X),padre(Z,Y),dif(X,Y),mujer(X).
