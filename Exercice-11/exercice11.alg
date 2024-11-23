<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="FIN_POUR" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2para="" F2defaut="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalAffichages="1000" maxBoucle="500000" arrondiAuto="vrai" totalBoucles="5000000" epaisseurPoint="2" epaisseurLigne="2" nbDecimales="8"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="inventaire EST_DU_TYPE LISTE" code="1#LISTE#inventaire"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="produit EST_DU_TYPE NOMBRE" code="1#NOMBRE#produit"/>
        <item algoitem="quantite EST_DU_TYPE NOMBRE" code="1#NOMBRE#quantite"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="POUR i ALLANT_DE 0 A 4" code="12#i#0#4">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="inventaire[i] PREND_LA_VALEUR 0" code="5#inventaire#0#i"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="inventaire[0] PREND_LA_VALEUR 10" code="5#inventaire#10#0"/>
        <item algoitem="inventaire[1] PREND_LA_VALEUR 15" code="5#inventaire#15#1"/>
        <item algoitem="inventaire[2] PREND_LA_VALEUR 5" code="5#inventaire#5#2"/>
        <item algoitem="inventaire[3] PREND_LA_VALEUR 20" code="5#inventaire#20#3"/>
        <item algoitem="inventaire[4] PREND_LA_VALEUR 8" code="5#inventaire#8#4"/>
        <item algoitem="AFFICHER &quot;Inventaire initial :&quot;" code="4#Inventaire initial :#0"/>
        <item algoitem="POUR i ALLANT_DE 0 A 4" code="12#i#0#4">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER &quot;Produit &quot;" code="4#Produit #0"/>
            <item algoitem="AFFICHER i" code="3#i#0#pasliste"/>
            <item algoitem="AFFICHER &quot; : &quot;" code="4# : #0"/>
            <item algoitem="AFFICHER inventaire[i]" code="3#inventaire#0#i"/>
            <item algoitem="AFFICHER &quot; unités&quot;" code="4# unités#0"/>
            <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;Quel produit souhaitez-vous acheter (0-4) ?&quot;" code="4#Quel produit souhaitez-vous acheter (0-4) ?#0"/>
        <item algoitem="LIRE produit" code="2#produit#pasliste"/>
        <item algoitem="AFFICHER &quot;Quelle quantité ?&quot;" code="4#Quelle quantité ?#0"/>
        <item algoitem="LIRE quantite" code="2#quantite#pasliste"/>
        <item algoitem="SI (quantite &lt;= inventaire[produit]) ALORS" code="6#quantite &lt;= inventaire[produit]">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="inventaire[produit] PREND_LA_VALEUR inventaire[produit] - quantite" code="5#inventaire#inventaire[produit] - quantite#produit"/>
            <item algoitem="AFFICHER &quot;Achat effectué. Nouvel inventaire :&quot;" code="4#Achat effectué. Nouvel inventaire :#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="AFFICHER &quot;Quantité insuffisante. Inventaire inchangé :&quot;" code="4#Quantité insuffisante. Inventaire inchangé :#0"/>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
        <item algoitem="POUR i ALLANT_DE 0 A 4" code="12#i#0#4">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER &quot;Produit &quot;" code="4#Produit #0"/>
            <item algoitem="AFFICHER i" code="3#i#0#pasliste"/>
            <item algoitem="AFFICHER &quot; : &quot;" code="4# : #0"/>
            <item algoitem="AFFICHER inventaire[i]" code="3#inventaire#0#i"/>
            <item algoitem="AFFICHER &quot; unités&quot;" code="4# unités#0"/>
            <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
