/* --- Faits --- */

% Personnes
personne(01, Glorfindel, 1.90, Blond, 5000)
personne(02, Sauron, 2.78, Brun, 10000)
personne(03, Arwen, 1.70, Brun, 2901)
personne(04, Aragorn, 1.98, Brun, 210)
personne(06, Eowyn, 1.80, Blond, 30)
personne(07, Faramir, 1.80, Chatain, 120)

% Goûts
gout(01, Metal, Fantastique, Escrime)
gout(02, Metal, Horreur, Escrime)
gout(03, Classique, Historique, Course)
gout(04, Classique, Historique, Course)
gout(05, Jazz, ScienceFiction, Equitation)
gout(07, Rock, ScienceFiction, Escalade)

% Recherche
recherche(01, 2.78, Brun, 10000)
recherche(02, 1.90, Blond, 5000)
recherche(03, 1.98, Brun, 210)
recherche(04, 1.70, Brun, 2901)
recherche(06, 1.80, Chatain, 120)
recherche(07, 1.80, Blond, 30)

/* --- Règles --- */

convient-physiquement(X, Y)
ont-memes-gouts(X, Y) :- gout(personne(I, X, T, C, A), M, L, S), gout(personne(I, Y, T, C, A), M, L, S)
