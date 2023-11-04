orbits(mercury, sun).
orbits(venus,   sun).
orbits(earth,   sun).
orbits(mars,    sun).
orbits(moon, earth).
orbits(phobos, mars).
orbits(deimos, mars).
planet(P) :- orbits(P,sun).
satellite(S) :- orbits(S,P), planet(P).

OUTPUT:
?- planet(P).
P = mercury ;
P = venus ;
P = earth ;
P = mars.

?- satellite(S).
S = moon ;
S = phobos ;
S = deimos.
