conjunto(a).
conjunto(b).
conjunto_dato(a,1).
conjunto_dato(a,2).
conjunto_dato(a,3).
conjunto_dato(a,4).
conjunto_dato(b,4).
conjunto_dato(b,5).
conjunto_dato(b,6).

%seleccion
dato_mayor_3(A):-conjunto_dato(A,X), X>3,write(X).

%union A+B
union(A,B):-conjunto(A), conjunto(B),conjunto_dato(_,X),write(X).

%producto cartesiano A*B
producto(A,B):-conjunto_dato(A,X), conjunto_dato(B,Y),write(X),write(Y).

%da true si el dato no pertenece al conjunto
no_pertece(A,X):-conjunto_dato(A,Y),X\=Y.

%diferencia: A-B
diferencia(A,B):-conjunto_dato(A,X), not(conjunto_dato(B,X)),write(X).

%interseccion
interseccion(A,B):-conjunto_dato(A,X),conjunto_dato(B,Y),X=Y, write(X).

