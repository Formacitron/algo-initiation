class Noeud:
    def __init__(self, valeur, gauche=None, droite=None):
        self.valeur = valeur
        self.gauche = gauche
        self.droite = droite

def parcoursEnLargeur(noeudParent):
    file = [noeudParent]  # Utiliser une liste comme file
    while file:
        noeudCourant = file.pop(0)  # Simuler le défilement
        print(f"Nœud: {noeudCourant.valeur}")
        if noeudCourant.gauche:
            file.append(noeudCourant.gauche)  # Simuler l'enfilement
        if noeudCourant.droite:
            file.append(noeudCourant.droite)  # Simuler l'enfilement

# Création de l'arbre
n7 = Noeud(7)
n6 = Noeud(6)
n5 = Noeud(5)
n4 = Noeud(4)
n3 = Noeud(3, n6, n7)
n2 = Noeud(2, n4, n5)
racine = Noeud(1, n2, n3)

# Exécution du parcours en largeur
parcoursEnLargeur(racine)
