ciudad(bogota).
ciudad(medellin).
ciudad(cali).
ciudad(cartagena).
ciudad(manizales).
ciudad(barranquilla).
ciudad(pasto).
ciudad(monteria).

vuelo(bogota, medellin).
vuelo(medellin, cartagena).
vuelo(cali, bogota).
vuelo(bogota, cartagena).
vuelo(manizales, cartagena).
vuelo(medellin, barranquilla).
vuelo(pasto, bogota).
vuelo(bogota, pasto).

escala(X, Y, Z) :- vuelo(X, Y), vuelo(Y, Z), ciudad(Z), ciudad(X), ciudad(Y).

llega(X, _, Y) :- vuelo(X, Y), ciudad(X), ciudad(Y).
llega(X, Y, Z) :- vuelo(X, Y), vuelo(Y, Z), ciudad(Z), ciudad(X), ciudad(Y).

