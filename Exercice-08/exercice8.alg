<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER total_pas" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2para="" F2defaut="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalAffichages="1000" maxBoucle="500000" arrondiAuto="vrai" totalBoucles="5000000" epaisseurPoint="2" epaisseurLigne="2" nbDecimales="8"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="total_pas EST_DU_TYPE NOMBRE" code="1#NOMBRE#total_pas"/>
        <item algoitem="pas_ajout EST_DU_TYPE NOMBRE" code="1#NOMBRE#pas_ajout"/>
        <item algoitem="continuer EST_DU_TYPE CHAINE" code="1#CHAINE#continuer"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="total_pas PREND_LA_VALEUR 0" code="5#total_pas#0#pasliste"/>
        <item algoitem="AFFICHER &quot;Voulez-vous ajouter des pas ? (oui/non)&quot;" code="4#Voulez-vous ajouter des pas ? (oui/non)#0"/>
        <item algoitem="LIRE continuer" code="2#continuer#pasliste"/>
        <item algoitem="TANT_QUE (continuer != &quot;non&quot;) FAIRE" code="15#continuer != &quot;non&quot;">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;Combien de pas avez-vous fait ?&quot;" code="4#Combien de pas avez-vous fait ?#0"/>
            <item algoitem="LIRE pas_ajout" code="2#pas_ajout#pasliste"/>
            <item algoitem="total_pas PREND_LA_VALEUR total_pas + pas_ajout" code="5#total_pas#total_pas + pas_ajout#pasliste"/>
            <item algoitem="AFFICHER &quot;Voulez-vous ajouter plus de pas ? (oui/non)&quot;" code="4#Voulez-vous ajouter plus de pas ? (oui/non)#0"/>
            <item algoitem="LIRE continuer" code="2#continuer#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;Nombre total de pas : &quot;" code="4#Nombre total de pas : #0"/>
        <item algoitem="AFFICHER total_pas" code="3#total_pas#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
