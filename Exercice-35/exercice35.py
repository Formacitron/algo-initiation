class Noeud:
    def __init__(self, valeur):
        self.valeur = valeur
        self.gauche = None
        self.droite = None

def inserer(racine, valeur):
    if racine is None:
        return Noeud(valeur)
    if valeur < racine.valeur:
        print(f"Insertion de {valeur} sous {racine.valeur} à gauche")
        racine.gauche = inserer(racine.gauche, valeur)
    else:
        print(f"Insertion de {valeur} sous {racine.valeur} à droite")
        racine.droite = inserer(racine.droite, valeur)
    return racine

def afficher_arbre(noeud):
    if noeud:
        print(noeud.valeur, end=' ')
        afficher_arbre(noeud.gauche)
        afficher_arbre(noeud.droite)

# Programme principal
racine = None
valeurs = [5, 3, 7, 1, 9, 4, 6]

for valeur in valeurs:
    racine = inserer(racine, valeur)

print("Arbre binaire :")
afficher_arbre(racine)
