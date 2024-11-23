class Noeud:
    def __init__(self, valeur):
        self.valeur = valeur
        self.gauche = None
        self.droite = None

def inserer(racine, valeur):
    if racine is None:
        return Noeud(valeur)
    if valeur < racine.valeur:
        racine.gauche = inserer(racine.gauche, valeur)
    else:
        racine.droite = inserer(racine.droite, valeur)
    return racine

def parcours_preordre(noeud):
    if noeud:
        print(noeud.valeur, end=' ')
        parcours_preordre(noeud.gauche)
        parcours_preordre(noeud.droite)

def parcours_inordre(noeud):
    if noeud:
        parcours_inordre(noeud.gauche)
        print(noeud.valeur, end=' ')
        parcours_inordre(noeud.droite)

def parcours_postordre(noeud):
    if noeud:
        parcours_postordre(noeud.gauche)
        parcours_postordre(noeud.droite)
        print(noeud.valeur, end=' ')

# Programme principal
racine = None
valeurs = [5, 3, 7, 1, 9, 4, 6]

for valeur in valeurs:
    racine = inserer(racine, valeur)

print("Parcours préordre:")
parcours_preordre(racine)
print("\nParcours inordre:")
parcours_inordre(racine)
print("\nParcours postordre:")
parcours_postordre(racine)
