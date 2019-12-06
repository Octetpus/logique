# Compte rendu : TP Logique
## TP 1 : la modélisation via la logique
### Exercice 1
Prédicat : convient_physiquement. X convient à Y si la taille la couleur des cheveux et l'âge de X sont les critères recherchés par Y.

```prolog
convient_physiquement(X, Y):-
    personne(X, N, T, C, A),
    recherche(Y, T, C, A).
```
Prédicat : ont_memes_gouts. X et Y ont les mêmes goûts si les goûts de X sont identique à ceux de Y.
```prolog
ont_memes_gouts(X, Y):-
    gout(X, M, L, S),
    gout(Y, M, L, S).
```
Prédicat: couples. X et Y sont assorties si X convient physiquement à Y et si Y convient physiquement à X et si X et Y ont les mêmes goûts.
``` prolog
couples(X, Y):-
    convient_physiquement(X, Y), 
    convient_physiquement(Y, X), 
    ont_memes_gouts(X, Y).
```
### Exercice 2

## TP 2 : récursivité et listes
## TP 3 : coder un 2-SAT solver 



