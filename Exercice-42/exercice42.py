class Graphe:
    def __init__(self):
        self.graphe = {}
    
    def ajouter_sommet(self, sommet):
        if sommet not in self.graphe:
            self.graphe[sommet] = []
    
    def ajouter_arete(self, sommet1, sommet2, poids):
        if sommet1 not in self.graphe:
            self.ajouter_sommet(sommet1)
        if sommet2 not in self.graphe:
            self.ajouter_sommet(sommet2)
        self.graphe[sommet1].append((sommet2, poids))
        self.graphe[sommet2].append((sommet1, poids))
    
    def afficher_graphe(self):
        for sommet in self.graphe:
            print(f"{sommet}: {self.graphe[sommet]}")

def floyd_warshall(graphe):
    sommets = list(graphe.graphe.keys())
    n = len(sommets)
    dist = [[float('inf')] * n for _ in range(n)]
    
    for i in range(n):
        dist[i][i] = 0
        for voisin, poids in graphe.graphe[sommets[i]]:
            j = sommets.index(voisin)
            dist[i][j] = poids

    for k in range(n):
        for i in range(n):
            for j in range(n):
                dist[i][j] = min(dist[i][j], dist[i][k] + dist[k][j])

    return dist, sommets

# Programme principal
reseau_routier = Graphe()
villes = ["Paris", "Lille", "Rennes", "Tours", "Strasbourg", "Bourges"]
for ville in villes:
    reseau_routier.ajouter_sommet(ville)

reseau_routier.ajouter_arete("Paris", "Lille", 221)
reseau_routier.ajouter_arete("Paris", "Rennes", 354)
reseau_routier.ajouter_arete("Paris", "Tours", 240)
reseau_routier.ajouter_arete("Paris", "Strasbourg", 491)
reseau_routier.ajouter_arete("Tours", "Bourges", 180)
reseau_routier.ajouter_arete("Strasbourg", "Bourges", 530)

print("Réseau routier :")
reseau_routier.afficher_graphe()

print("\nMatrice des plus courts chemins :")
distances, sommets = floyd_warshall(reseau_routier)
print("    " + "  ".join(f"{s:10}" for s in sommets))
for i, ligne in enumerate(distances):
    print(f"{sommets[i]:4}" + "  ".join(f"{d:10}" if d != float('inf') else "   INF    " for d in ligne))
