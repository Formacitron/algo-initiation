<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="FIN_SINON" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2para="" F2defaut="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalAffichages="1000" maxBoucle="500000" arrondiAuto="vrai" totalBoucles="5000000" epaisseurPoint="2" epaisseurLigne="2" nbDecimales="8"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="force EST_DU_TYPE CHAINE" code="1#CHAINE#force"/>
        <item algoitem="lait EST_DU_TYPE CHAINE" code="1#CHAINE#lait"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Préférez-vous un café fort ou léger ? (fort/leger)&quot;" code="4#Préférez-vous un café fort ou léger ? (fort/leger)#0"/>
        <item algoitem="LIRE force" code="2#force#pasliste"/>
        <item algoitem="AFFICHER &quot;Souhaitez-vous du lait ? (oui/non)&quot;" code="4#Souhaitez-vous du lait ? (oui/non)#0"/>
        <item algoitem="LIRE lait" code="2#lait#pasliste"/>
        <item algoitem="SI (force == &quot;fort&quot;) ALORS" code="6#force == &quot;fort&quot;">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="SI (lait == &quot;oui&quot;) ALORS" code="6#lait == &quot;oui&quot;">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;Voici un cappuccino !&quot;" code="4#Voici un cappuccino !#0"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
                <item algoitem="SINON" code="9#sinon">
                    <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                    <item algoitem="AFFICHER &quot;Voici un expresso !&quot;" code="4#Voici un expresso !#0"/>
                    <item algoitem="FIN_SINON" code="11#finsinon"/>
                </item>
            </item>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="SI (lait == &quot;oui&quot;) ALORS" code="6#lait == &quot;oui&quot;">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="AFFICHER &quot;Voici un café latte !&quot;" code="4#Voici un café latte !#0"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                    <item algoitem="SINON" code="9#sinon">
                        <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                        <item algoitem="AFFICHER &quot;Voici un café américain !&quot;" code="4#Voici un café américain !#0"/>
                        <item algoitem="FIN_SINON" code="11#finsinon"/>
                    </item>
                </item>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
