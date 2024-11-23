<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER fullname" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2para="" F2defaut="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalAffichages="1000" maxBoucle="500000" arrondiAuto="vrai" totalBoucles="5000000" epaisseurPoint="2" epaisseurLigne="2" nbDecimales="8"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="prenom EST_DU_TYPE CHAINE" code="1#CHAINE#prenom"/>
        <item algoitem="nom EST_DU_TYPE CHAINE" code="1#CHAINE#nom"/>
        <item algoitem="fullname EST_DU_TYPE CHAINE" code="1#CHAINE#fullname"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="prenom PREND_LA_VALEUR &quot;Steeve&quot;" code="5#prenom#&quot;Steeve&quot;#pasliste"/>
        <item algoitem="nom PREND_LA_VALEUR &quot;Lefort&quot;" code="5#nom#&quot;Lefort&quot;#pasliste"/>
        <item algoitem="fullname PREND_LA_VALEUR prenom + &quot; &quot; + nom" code="5#fullname#prenom + &quot; &quot; + nom#pasliste"/>
        <item algoitem="AFFICHER fullname" code="3#fullname#1#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
