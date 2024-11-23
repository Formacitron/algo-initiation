<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER div" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2para="" F2defaut="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalAffichages="1000" maxBoucle="500000" arrondiAuto="vrai" totalBoucles="5000000" epaisseurPoint="2" epaisseurLigne="2" nbDecimales="8"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="n1 EST_DU_TYPE NOMBRE" code="1#NOMBRE#n1"/>
        <item algoitem="n2 EST_DU_TYPE NOMBRE" code="1#NOMBRE#n2"/>
        <item algoitem="add EST_DU_TYPE NOMBRE" code="1#NOMBRE#add"/>
        <item algoitem="sous EST_DU_TYPE NOMBRE" code="1#NOMBRE#sous"/>
        <item algoitem="mult EST_DU_TYPE NOMBRE" code="1#NOMBRE#mult"/>
        <item algoitem="div EST_DU_TYPE NOMBRE" code="1#NOMBRE#div"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="n1 PREND_LA_VALEUR 20" code="5#n1#20#pasliste"/>
        <item algoitem="n2 PREND_LA_VALEUR 5" code="5#n2#5#pasliste"/>
        <item algoitem="add PREND_LA_VALEUR n1 + n2" code="5#add#n1 + n2#pasliste"/>
        <item algoitem="sous PREND_LA_VALEUR n1 - n2" code="5#sous#n1 - n2#pasliste"/>
        <item algoitem="mult PREND_LA_VALEUR n1 * n2" code="5#mult#n1 * n2#pasliste"/>
        <item algoitem="div PREND_LA_VALEUR n1 / n2" code="5#div#n1 / n2#pasliste"/>
        <item algoitem="AFFICHER &quot;add:&quot;" code="4#add:#0"/>
        <item algoitem="AFFICHER add" code="3#add#1#pasliste"/>
        <item algoitem="AFFICHER &quot;sous:&quot;" code="4#sous:#0"/>
        <item algoitem="AFFICHER sous" code="3#sous#1#pasliste"/>
        <item algoitem="AFFICHER &quot;mult:&quot;" code="4#mult:#0"/>
        <item algoitem="AFFICHER mult" code="3#mult#1#pasliste"/>
        <item algoitem="AFFICHER &quot;div:&quot;" code="4#div:#0"/>
        <item algoitem="AFFICHER div" code="3#div#1#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
