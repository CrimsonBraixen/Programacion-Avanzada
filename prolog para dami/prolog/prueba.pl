entrada(paella,25).
entrada(gazpacho,50).
entrada(consom�,31).

carne(filete_de_cerdo,59).
carne(pollo_asado,97).

pescado(trucha,51).
pescado(bacalao,53).

postre(flan, 520).
postre(helado,415).
postre(pastel,933).

bebida(agua,10).
bebida(cola,400).
bebida(limonada,20).

comidas(X,Y,Z,W):-entrada(X,_),(carne(Y,_);pescado(Y,_)),postre(Z,_),bebida(W,_).

comidaConCaloria(X,Y,Z,W,C):-entrada(X,C1),(carne(Y,C2);pescado(Y,C2)),postre(Z,C4),bebida(W,C5), C is C1+C2+C4+C5.

productoComida(X1,Y1,Z1,W1,C1,X2,Y2,Z2,W2,C2):-comidaConCaloria(X1,Y1,Z1,W1,C1),comidaConCaloria(X2,Y2,Z2,W2,C2).

seleccionComida(X1,Y1,Z1,W1,C1,X2,Y2,Z2,W2,C2):-productoComida(X1,Y1,Z1,W1,C1,X2,Y2,Z2,W2,C2),C1>C2.

proyeccionComida(X1,Y1,Z1,W1,C1):-seleccionComida(X1,Y1,Z1,W1,C1,_,_,_,_,_).

menorComida(X1,Y1,Z1,W1,C1):- comidaConCaloria(X1,Y1,Z1,W1,C1),not(proyeccionComida(X1,Y1,Z1,W1,C1)).

comidasConsome(X,Y,Z,W):-entrada(X,_),(carne(Y,_);pescado(Y,_)),postre(Z,_),bebida(W,_), X=='consom�'.
