start(X,V) :- nodo(X,V),X=1.

arcoVX(X,Y) :-  arco(X,Y), nodo(X,V),start(Z,V).
nood(X) :- arcoVX(X,Y), nodo(X,V), start(Z,V).

% definisco le strategie
1 {arcoSceltoVX(X, Y) : arcoVX(X,Y)} 1 :- nood(X).
arcoScelto(X,Y) :- arco(X,Y), not arcoVX(X,Y).
arcoScelto(X,Y) :- arco(X,Y), arcoSceltoVX(X,Y).

% definisco i vari path + cicli
raggiunto(X) :- start(X,V).
raggiunto(Y) :- partita(X,Y), raggiunto(X).
1 {partita(X,Y) : arcoScelto(X,Y)} 1 :- raggiunto(X).

%individuo il ciclo nel path
raggiungibile(X,Y) :- partita(X,Z), partita(Z,Y).
raggiungibile(X,Y) :- partita(X,Z), raggiungibile(Z,Y).

sum(N) :- N = #sum{ C,X,Y : partita(X,Y), raggiungibile(X,X), raggiungibile(Y,Y), costo(X,Y,C) }.
%:- sum(N), N < 0.

%regola per i pozzi
%nonPozzo(X) :- nodo(X,V), arcoScelto(X,Y),X!=Y.
%arcoScelto(X,X) :- nodo(X,V), not nonPozzo(X).
%costo(X,X,0) :- arcoScelto(X,X).


%#show nood/1.
%#show arcoVX/2.
#show arcoSceltoVX/2.
#show partita/2.
#show sum/1.
%#show path/2.
%#show raggiungibile/2.
%#show nonPozzo/1.
