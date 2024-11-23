<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHERCALCUL note / compteur" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2para="" F2defaut="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalAffichages="1000" maxBoucle="500000" arrondiAuto="vrai" totalBoucles="5000000" epaisseurPoint="2" epaisseurLigne="2" nbDecimales="8"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="notes EST_DU_TYPE LISTE" code="1#LISTE#notes"/>
        <item algoitem="compteur EST_DU_TYPE NOMBRE" code="1#NOMBRE#compteur"/>
        <item algoitem="note EST_DU_TYPE NOMBRE" code="1#NOMBRE#note"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="note PREND_LA_VALEUR 0" code="5#note#0#pasliste"/>
        <item algoitem="compteur PREND_LA_VALEUR 0" code="5#compteur#0#pasliste"/>
        <item algoitem="TANT_QUE (note>=0) FAIRE" code="15#note>=0">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;Entrez une note: &quot;" code="4#Entrez une note: #0"/>
            <item algoitem="LIRE note" code="2#note#pasliste"/>
            <item algoitem="SI (note>=0) ALORS" code="6#note>=0">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="notes[compteur] PREND_LA_VALEUR note" code="5#notes#note#compteur"/>
                <item algoitem="compteur PREND_LA_VALEUR compteur + 1" code="5#compteur#compteur + 1#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="note PREND_LA_VALEUR 0" code="5#note#0#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 0 A compteur-1" code="12#i#0#compteur-1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="note PREND_LA_VALEUR note + notes[i]" code="5#note#note + notes[i]#pasliste"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;La moyenne est : &quot;" code="4#La moyenne est : #0"/>
        <item algoitem="AFFICHERCALCUL note / compteur" code="20#note / compteur#0"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
