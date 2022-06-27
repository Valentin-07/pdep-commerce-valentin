viveEnMansion(agatha).
viveEnMansion(mayordomo).
viveEnMansion(charles).

odia(agatha, Nombre):-
    viveEnMansion(Nombre),
    Nombre \= mayordomo.

noOdia(PrimerNombre, SegundoNombre):-
    viveEnMansion(SegundoNombre),
    not(odia(PrimerNombre,SegundoNombre)).

odia(charles, Nombre) :-
    noOdia(agatha, Nombre).

odia(mayordomo,Nombre) :-
    odia(agatha,Nombre).

esMasRicoQue(agatha,Nombre):-
    noOdia(mayordomo, Nombre).

mata(Asesino,Muerto) :-
    odia(Asesino,Muerto),
    not(esMasRicoQue(Muerto,Asesino)).
