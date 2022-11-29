%auto(identificacion, combustible, capacidad, seguridad)

auto(mcqueen, 2, 10, 10).
auto(delorean, 1, 15, 20).
auto(troncomovil, 5, 7, 100).

%repuesto(descripcion, magnitud)
repuesto(tanquecombustible, 5).
repuesto(cubierta, 3).
repuesto(condensadorflujo, 7).
repuesto(tornillo,17).
repuesto(turbo,10).

%repuesto esencial
esencial(turbo).

%cuál es el nivel de seguridad límite para considerar inseguro un auto.
nivelSeguridadLimite(10).


colocado(mcqueen, tanqueCombustible, 17).
colocado(mcqueen, cubierta, 50).
colocado(delorean, condensadorFlujo, 365).

% dia actual
hoy(500).

% --- PUNTO 1 --- %

esConveniente(Auto,Repuesto) :-
    auto(Auto,_,_,_),
    colocado(Auto, Repuesto, Dia),
    hoy(Actual),
    Actual-Dia > 100.

esConveniente(Auto,Repuesto) :-
    auto(Auto,_,_,_),
    repuesto(Repuesto,17),
    not(colocado(Auto,Repuesto,_)).

esConveniente(Auto,Repuesto) :-
    autoInseguroOPocoCombustible(Auto),
    repuesto(Repuesto,_),
    esencial(Repuesto).

autoInseguroOPocoCombustible(Auto):-
    auto(Auto,_,_,Seguridad),
    nivelSeguridadLimite(Limite),
    Seguridad < Limite.

autoInseguroOPocoCombustible(Auto):-
    auto(Auto,Combustible,Capacidad,_),
    Combustible < Capacidad / 2.


% --- PUNTO 2 --- %

ningunComponente(Auto) :-
	auto(Auto, _, _, _),
	not(colocado(Auto, _, _)).

unicoComponente(Auto) :-
    auto(Auto,_,_,_),
    colocado(Auto,R1,_),
    forall(colocado(Auto,R2,_),R1 = R2).

/*
unicoComponente(Auto) :-
    auto(Auto,_,_,_),
    colocado(Auto, R1,_),
    not((colocado(Auto, R1,_), R1 \= R2)).

unicoComponente(Auto) :-
    algunComponente(Auto),
    not(masDeUnComponente(Auto)).

algunComponente(Auto):-
    auto(Auto,_,_,_),
    colocado(Auto,_,_).
*/

masDeUnComponente(Auto) :-
    auto(Auto,_,_,_),
    colocado(Auto,R1,_),
    colocado(Auto,R2,_),
    R1 \= R2.


% --- PUNTO 3 --- %

repuestoConviene(Repuesto) :-
    repuesto(Repuesto,_),
    forall(auto(Auto,_,_,_),esConveniente(Auto,Repuesto)).

