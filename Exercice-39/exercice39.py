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

graphe = Graphe()
graphe.ajouter_sommet("Paris")
graphe.ajouter_sommet("Lille")
graphe.ajouter_sommet("Rennes")
graphe.ajouter_sommet("Strasbourg")
graphe.ajouter_sommet("Tours")

graphe.ajouter_arrete("Paris", "Lille")
graphe.ajouter_arrete("Paris", "Rennes")
graphe.ajouter_arrete("Paris", "Strasbourg")
graphe.ajouter_arrete("Paris", "Tours")

graphe.afficher()
