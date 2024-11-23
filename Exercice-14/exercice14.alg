<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER &quot; dollars.&quot;"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2defaut="" F2para="" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param nbDecimales="8" epaisseurPoint="2" epaisseurLigne="2" totalBoucles="5000000" maxBoucle="500000" totalAffichages="1000" arrondiAuto="vrai"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES">
        <item code="201#euroToDollar#euros" algoitem="FONCTION euroToDollar(euros)">
            <item code="202#declarationsvariablesfonction" algoitem="VARIABLES_FONCTION">
                <item code="1#NOMBRE#taux" algoitem="taux EST_DU_TYPE NOMBRE"/>
            </item>
            <item code="203#debutfonction" algoitem="DEBUT_FONCTION"/>
            <item code="5#taux#1.18#pasliste" algoitem="taux PREND_LA_VALEUR 1.18"/>
            <item code="205#euros * taux" algoitem="RENVOYER euros * taux"/>
            <item code="204#finfonction" algoitem="FIN_FONCTION"/>
        </item>
    </item>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#montantEuros" algoitem="montantEuros EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#montantDollars" algoitem="montantDollars EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Entrez un montant en euros : #0" algoitem="AFFICHER &quot;Entrez un montant en euros : &quot;"/>
        <item code="2#montantEuros#pasliste" algoitem="LIRE montantEuros"/>
        <item code="5#montantDollars#euroToDollar(montantEuros)#pasliste" algoitem="montantDollars PREND_LA_VALEUR euroToDollar(montantEuros)"/>
        <item code="3#montantEuros#0#pasliste" algoitem="AFFICHER montantEuros"/>
        <item code="4# euros équivalent à #0" algoitem="AFFICHER &quot; euros équivalent à &quot;"/>
        <item code="3#montantDollars#0#pasliste" algoitem="AFFICHER montantDollars"/>
        <item code="4# dollars.#0" algoitem="AFFICHER &quot; dollars.&quot;"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
