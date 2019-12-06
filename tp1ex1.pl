/* --- Faits --- */

% Personnes
personne(01, glorfindel, 190, blond, 5000).
personne(02, sauron, 278, brun, 10000).
personne(03, arwen, 170, brun, 2901).
personne(04, aragorn, 198, brun, 210).
personne(06, eowyn, 180, blond, 30).
personne(07, faramir, 180, chatain, 120).

% Goûts
gout(01, metal, fantastique, escrime).
gout(02, metal, horreur, escrime).
gout(03, classique, historique, course).
gout(04, classique, historique, course).
gout(05, jazz, scienceFiction, equitation).
gout(07, rock, scienceFiction, escalade).

% Recherche
recherche(01, 278, brun, 10000).
recherche(02, 190, blond, 5000).
recherche(03, 198, brun, 210).
recherche(04, 170, brun, 2901).
recherche(06, 180, chatain, 120).
recherche(07, 180, blond, 30).

/* --- Règles --- */

convient-physiquement(X, Y) :- personne(X, N, T, C, A), recherche(Y, T, C, A).
ont-memes-gouts(X, Y) :- gout(X, M, L, S), gout(Y, M, L, S).
couples(X, Y) :- ont-memes-gouts(X, Y), convient-physiquement(X, Y), convient-physiquement(Y, X).

/* --- Questions --- */

%?- couples(X, Y).
