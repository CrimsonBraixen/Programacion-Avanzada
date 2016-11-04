pais(argentina,150).
pais(brasil,200).
pais(chile,10).
pais(venezuela,59).
pais(paraguay,60).
pais(uruguay,40).
pais(bolivia,94).
pais(ecuador,110).
pais(colombia,100).

producto(X,S1,Y,S2):-pais(X,S1),pais(Y,S2).
seleccion(X,S1,Y,S2):-producto(X,S1,Y,S2),S1>S2.
proyeccion(X,S1):-seleccion(X,S1,_,_).
menor(X,S):-pais(X,S),not(proyeccion(X,S)).


