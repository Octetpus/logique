/*Fichier : valentin.pl*/
/*Exemples de faits*/
aime(rose, laurent). % rose aime laurent .
aime(laurent, lise).
aime(nathan, neige).
aime(neige, nathan ).
aime(neige, jezabel ).
/*Exemple de regles*/
couple(X, Y) :− aime(X, Y), aime(Y, X).
