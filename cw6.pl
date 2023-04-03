%element(E,L)
%spełnia gdy E jest w L
% ------------------------------------

%warunek kończący
	element(E,[E|_]).

%rekurencja: jeżeli E jest elementem listy, a nie jest jej głową to jest ogonem
	element(E,[_|T]):-element(E,T).


%elementy 3 różnych list L1 L2 i L3 
%spełnia gdy L3 jest L1 i L2
% przykład L1 - [1,2]  L2 - [3,4] L3 - [1,2,3,4]
%-------------------------------------------------

%warunek kończący
	kwadrat([],L,L).

%rekurencja 
	kwadrat([H|T1],L,[H|T2]):-kwadrat(T1,L,T2).



%odwrotna list 
%spełnia gdy lista L2 to lista L1 tylko odwrtonie zapisana
%------------------------------------------------------------

%warunek odwrotny
	odwrotna([],[]).

%rekurencja
	odwrotna([H|T1],L):-odwrotna(T1,T1),kwadrat(T2,[H],L).



%Predykytaty
%dodatni(X)
%spełnia gdy

	dodatni(X):-X>0.


%lista dodatnia
%spełnia gdy elementy listy dodatnie

	lista_dodatnia(L):-
		maplist(dodatni,L).

%wiekszy_od(X,Y)
%spełniony gdy Y > X
	wiekszy_od(X,Y):-Y>X.

%większy_od_lista(+X,+L)
%spełnia gdy wsyztstkie elementy L > X

	wiekszy_od_lista(X,L):-
		maplist(wiekszy_od(X),L).

%kwadrat

	kwadrat(X,Y):-Y is X*X.

%kwadrat lista L1 I L2 
%spełnia gdy L2 są równie kwadratowi L1

	kwadrat_listy(L1,L2):-
		maplist(kwadrat,L1,L2).

%----------------------------------------------

%pomoc
	mniejsze(X,Y):- Y is X-1.


%lista mniejsza o jeden o 1 od L1 i L2
%spełnia gdy elementy L2 są mniejsze o jeden o L1


	mniejsza_lista(L1,L2):-
		maplist(mniejsze,L1,L2).



