class Graphe:
    def __init__(self):
        self.graphe = {}

    def ajouter_sommet(self, sommet):
        self.graphe[sommet] = []

    def ajouter_arrete(self, sommet, arete):
        self.graphe[sommet].append(arete)
        self.graphe[arete].append(sommet)
        
    def afficher(self):
        for sommet in self.graphe:
            print(sommet, graphe.graphe[sommet])

    def bfs(self, depart):
        file = [depart]
        visites = {}
        visites[depart] = True

        while len(file) > 0:
            courant = file.pop()
            print(courant)
            for voisin in self.graphe[courant]:
                if not (voisin in visites):
                    file.insert(0, voisin)
                    visites[voisin] = True


graphe = Graphe()
graphe.ajouter_sommet("Paris")
graphe.ajouter_sommet("Lille")
graphe.ajouter_sommet("Rennes")
graphe.ajouter_sommet("Strasbourg")
graphe.ajouter_sommet("Tours")
graphe.ajouter_sommet("Roubaix")
graphe.ajouter_sommet("Bourges")

graphe.ajouter_arrete("Paris", "Lille")
graphe.ajouter_arrete("Paris", "Rennes")
graphe.ajouter_arrete("Paris", "Strasbourg")
graphe.ajouter_arrete("Paris", "Tours")
graphe.ajouter_arrete("Bourges", "Tours")
graphe.ajouter_arrete("Bourges", "Strasbourg")
graphe.ajouter_arrete("Roubaix", "Lille")
graphe.ajouter_arrete("Strasbourg", "Lille")
graphe.ajouter_arrete("Tours", "Rennes")

graphe.bfs("Paris")
