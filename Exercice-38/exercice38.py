class NoeudNAire:
    def __init__(self, valeur):
        self.valeur = valeur
        self.enfants = []

def trouver_chemins(noeud, chemin_actuel, tous_chemins):
    chemin_actuel.append(noeud.valeur)
    
    if not noeud.enfants:  # C'est une feuille
        tous_chemins.append(list(chemin_actuel))
    else:
        for enfant in noeud.enfants:
            trouver_chemins(enfant, chemin_actuel, tous_chemins)
    
    chemin_actuel.pop()  # Backtrack

# Programme principal
racine = NoeudNAire('A')
b = NoeudNAire('B')
c = NoeudNAire('C')
d = NoeudNAire('D')
e = NoeudNAire('E')
f = NoeudNAire('F')
g = NoeudNAire('G')
h = NoeudNAire('H')

racine.enfants = [b, c, d]
b.enfants = [e, f]
d.enfants = [g, h]

tous_chemins = []
trouver_chemins(racine, [], tous_chemins)

print("Tous les chemins de la racine aux feuilles:")
for chemin in tous_chemins:
    print(' -> '.join(chemin))
