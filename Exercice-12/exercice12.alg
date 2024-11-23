<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER moyenne"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2lignes="" F2defaut="" F2para="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurPoint="2" nbDecimales="8" maxBoucle="500000" totalBoucles="5000000" totalAffichages="1000" arrondiAuto="vrai" epaisseurLigne="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="temperatures EST_DU_TYPE LISTE" code="1#LISTE#temperatures"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="max EST_DU_TYPE NOMBRE" code="1#NOMBRE#max"/>
        <item algoitem="min EST_DU_TYPE NOMBRE" code="1#NOMBRE#min"/>
        <item algoitem="somme EST_DU_TYPE NOMBRE" code="1#NOMBRE#somme"/>
        <item algoitem="moyenne EST_DU_TYPE NOMBRE" code="1#NOMBRE#moyenne"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="POUR i ALLANT_DE 0 A 6" code="12#i#0#6">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="temperatures[i] PREND_LA_VALEUR 0" code="5#temperatures#0#i"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="temperatures[0] PREND_LA_VALEUR 22" code="5#temperatures#22#0"/>
        <item algoitem="temperatures[1] PREND_LA_VALEUR 19" code="5#temperatures#19#1"/>
        <item algoitem="temperatures[2] PREND_LA_VALEUR 24" code="5#temperatures#24#2"/>
        <item algoitem="temperatures[3] PREND_LA_VALEUR 21" code="5#temperatures#21#3"/>
        <item algoitem="temperatures[4] PREND_LA_VALEUR 18" code="5#temperatures#18#4"/>
        <item algoitem="temperatures[5] PREND_LA_VALEUR 23" code="5#temperatures#23#5"/>
        <item algoitem="temperatures[6] PREND_LA_VALEUR 20" code="5#temperatures#20#6"/>
        <item algoitem="max PREND_LA_VALEUR temperatures[0]" code="5#max#temperatures[0]#pasliste"/>
        <item algoitem="min PREND_LA_VALEUR temperatures[0]" code="5#min#temperatures[0]#pasliste"/>
        <item algoitem="somme PREND_LA_VALEUR 0" code="5#somme#0#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 0 A 6" code="12#i#0#6">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="SI (temperatures[i] > max) ALORS" code="6#temperatures[i] > max">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="max PREND_LA_VALEUR temperatures[i]" code="5#max#temperatures[i]#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="SI (temperatures[i] &lt; min) ALORS" code="6#temperatures[i] &lt; min">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="min PREND_LA_VALEUR temperatures[i]" code="5#min#temperatures[i]#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="somme PREND_LA_VALEUR somme + temperatures[i]" code="5#somme#somme + temperatures[i]#pasliste"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="moyenne PREND_LA_VALEUR somme / 7" code="5#moyenne#somme / 7#pasliste"/>
        <item algoitem="AFFICHER &quot;Température la plus élevée : &quot;" code="4#Température la plus élevée : #0"/>
        <item algoitem="AFFICHER max" code="3#max#1#pasliste"/>
        <item algoitem="AFFICHER &quot;Température la plus basse : &quot;" code="4#Température la plus basse : #0"/>
        <item algoitem="AFFICHER min" code="3#min#1#pasliste"/>
        <item algoitem="AFFICHER &quot;Température moyenne : &quot;" code="4#Température moyenne : #0"/>
        <item algoitem="AFFICHER moyenne" code="3#moyenne#1#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
