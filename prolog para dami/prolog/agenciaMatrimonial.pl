hombre(pepe,alto,casta�o,adulto).
hombre(pepin,bajo,rubio,joven).
hombre(pepon,medio,negro,viejo).
mujer(pepa,alto,casta�o,adulto).
mujer(pepina,bajo,rubio,joven).
mujer(pepona,medio,negro,viejo).
gusta(pepe,jazz,aventura,tenis).
gusta(pepin,pop,ciencia-ficci�n,nataci�n).
gusta(pepon,clasica,aventura,nataci�n).
gusta(pepa,jazz,aventura,tenis).
gusta(pepina,pop,ciencia-ficci�n,nataci�n).
gusta(pepona,clasica,aventura,nataci�n).

busca(pepe,alto,casta�o,adulto).
busca(pepin,bajo,rubio,joven).
busca(pepon,medio,negro,viejo).
busca(pepa,alto,casta�o,adulto).
busca(pepina,bajo,rubio,joven).
busca(pepona,medio,negro,viejo).

convieneFisico(N1,N2):-busca(N1,X,Y,Z),((hombre(N1,_,_,_),mujer(N2,X,Y,Z));(mujer(N1,_,_,_),hombre(N2,X,Y,Z))).
conviene(N1,N2):-gusta(N1,X,Y,Z),gusta(N2,X,Y,Z),convieneFisico(N1,N2),convieneFisico(N2,N1).
adecuado(N1,N2):-conviene(N1,N2),conviene(N2,N1).

