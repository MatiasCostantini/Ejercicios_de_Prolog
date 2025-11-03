% Padres
padre(juan, maria).
padre(juan, pedro).
padre(carlos, sofia).
padre(carlos, lucas).
padre(pedro, nicolas).
padre(pedro, lorenzo).

% Madres
madre(laura, maria).
madre(laura, pedro).
madre(ana, sofia).
madre(ana, lucas).
madre(sofia,nicolas).
madre(sofia, lorenzo).

% Matrimonios
casados(juan, laura).
casados(carlos, ana).

% Género
hombre(juan).
hombre(pedro).
hombre(carlos).
hombre(lucas).
hombre(nicolas).
hombre(lorenzo).
mujer(laura).
mujer(maria).
mujer(ana).
mujer(sofia).


% Reglas

progenitor(P, H) :- 
    padre(P, H).
progenitor(P, H) :- 
    madre(P, H).   

hermano(X, Y) :-
    padre(P, X),
    padre(P, Y).

hermana(X, Y) :-
    madre(M, X),
    madre(M, Y).

tio(X,Y) :-
    padre(P, Y),
    hermano(X, P).

tio(X,Y) :-
    madre(M, Y),
    hermano(X, M).
    
abuelo(A,N) :-
    padre(A, P),
    progenitor(P, N).
    
abuela(A, N) :-
    madre(A, P),
    progenitor(P, N).

sobrino(S, T) :-
    progenitor(P, S),
    hermano(T, P).
  
:- initialization(main).

main :-
    write('Pedro es hermano de Maria? '),
    ( hermano(pedro, maria) ->   
        write('Si')
    ;
        write('No')
    ),
    nl,                        

    write('Maria es hermano de Pedro? '),
    ( hermana(maria, Pedro) ->   
        write('Si')
    ;
        write('No')
    ),
    nl,

    write('Maria es hermana de Sofia?'),
    ( hermana(maria, sofia) ->
        write(' Si')
    ;
        write(' No')
    ),
    nl,
    
    write('Maria es tia de Nicolas? '),
    ( tio(maria, nicolas) ->
        write(' Si')
    ;
        write(' No')
    ),
    nl,
    
    write('Juan es abuelo de Nicolas?'),
    ( abuelo(juan, nicolas) ->
        write(' Si')
    ;
        write(' No')
    ),
    nl,
    
    write('Laura es abuela de Nicolas?'),
    ( abuela(laura, nicolas) ->
        write(' Si')
    ;
        write(' No')
    ),
    nl,
    
    write('Lorenzo es el sobrino de Maria?'),
    ( sobrino(lorenzo, maria) ->
        write(' Si')
    ;
        write(' No')
    ),
    nl.
    
  

