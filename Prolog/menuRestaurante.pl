entrada(paella).
entrada(gazpacho).
entrada(consomé).

carne(filete_de_cerdo).
carne(pollo_asado).

pescado(trucha).
pescado(bacalao).

postre(flan).
postre(helado).
postre(pastel).

bebida(vino).
bebida(cerveza).
bebida(agua-mineral).

es_comida(X,Y,Z,W):-entrada(X),(carne(Y);pescado(Y)),postre(Z),bebida(W).
