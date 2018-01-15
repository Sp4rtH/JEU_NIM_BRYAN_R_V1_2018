Program NIM;

USES crt;

CONST NBDEPART=21;

VAR nb,nbT,J,nbalumettes:INTEGER;

BEGIN
    //initialisation
    nb:=0;
    nbT:=1;
    J:=1;
    nbalumettes:=NBDEPART;

    //boucle du tour du jeu
    REPEAT
        // SI au tour du joueur 1
        IF (J=1) THEN
        BEGIN
            WRITE ('Tour numeros :',nbT);
            WRITE ('Tour du joueur 1');
            WRITE ('Entrez un chiffre entre 1 et 3');
            READ (nb);
            // Verification de saisie
            IF ((nb>0) AND (nb<4)) THEN // si compris entre 1 et 3
            BEGIN
                nbT:=nbT+1;    //iteration des tours
                nbalumettes:=(nbalumettes-nb);
                WRITE ('alumettes restantes :',nbalumettes);
                J:=2
            END
            ELSE
            BEGIN
                WRITE ('erreur de saisie')
            END;
        END
        ELSE
        BEGIN
            WRITE ('Tour numeros :',nbT);
            WRITE ('Tour du joueur 2');
            WRITE ('Entrez un chiffre entre 1 et 3');
            READ (nb);
            // Verification de saisie
            IF ((nb>0) AND (nb<4)) THEN
            BEGIN
                nbT:=nbT+1;   //iteration des tours
                nbalumettes:=nbalumettes-nb;
                WRITE ('alumettes restantes:',nbalumettes);
                J:=1
            END
            ELSE
                WRITE ('erreur de saisie')
        END;
    UNTIL (nbalumettes=1);
    //verification du vainqueur
    IF (J=1) THEN
        WRITE ('joueur 2 est gagnant')
    ELSE
        WRITE ('joueur 1 est gagnant');







END.
