% Dies ist ein Kommentar
croaks(fritz).
eatsFlies(fritz).
chirps(burli).
sings(burli).
isCanary(fritz).
isFrog(X) :- croaks(X), eatsFlies(X).
isCanary(X) :- chirps(X), sings(X). 

