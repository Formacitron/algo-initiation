<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER resultatIMC"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2defaut="" F2para="" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param nbDecimales="8" epaisseurPoint="2" epaisseurLigne="2" totalBoucles="5000000" maxBoucle="500000" totalAffichages="1000" arrondiAuto="vrai"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES">
        <item code="201#calculIMC#poids,taille" algoitem="FONCTION calculIMC(poids,taille)">
            <item code="202#declarationsvariablesfonction" algoitem="VARIABLES_FONCTION">
                <item code="1#NOMBRE#imc" algoitem="imc EST_DU_TYPE NOMBRE"/>
            </item>
            <item code="203#debutfonction" algoitem="DEBUT_FONCTION"/>
            <item code="5#imc#poids / (taille * taille)#pasliste" algoitem="imc PREND_LA_VALEUR poids / (taille * taille)"/>
            <item code="205#imc" algoitem="RENVOYER imc"/>
            <item code="204#finfonction" algoitem="FIN_FONCTION"/>
        </item>
    </item>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#poids" algoitem="poids EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#taille" algoitem="taille EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#resultatIMC" algoitem="resultatIMC EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Entrez votre poids en kg : #0" algoitem="AFFICHER &quot;Entrez votre poids en kg : &quot;"/>
        <item code="2#poids#pasliste" algoitem="LIRE poids"/>
        <item code="4#Entrez votre taille en mètres : #0" algoitem="AFFICHER &quot;Entrez votre taille en mètres : &quot;"/>
        <item code="2#taille#pasliste" algoitem="LIRE taille"/>
        <item code="5#resultatIMC#calculIMC(poids,taille)#pasliste" algoitem="resultatIMC PREND_LA_VALEUR calculIMC(poids,taille)"/>
        <item code="4#Votre IMC est de : #0" algoitem="AFFICHER &quot;Votre IMC est de : &quot;"/>
        <item code="3#resultatIMC#1#pasliste" algoitem="AFFICHER resultatIMC"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
