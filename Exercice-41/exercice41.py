def kruskal_simple(aretes):
    # Trier les arêtes par poids (distance)
    sorted_aretes = sorted(aretes, key=lambda x: x[2])
    
    # Initialiser l'arbre de recouvrement minimal
    mst = []
    
    # Initialiser les ensembles de villes connectées
    connected = {}
    for arete in aretes:
        ville1, ville2, _ = arete
        if ville1 not in connected:
            connected[ville1] = {ville1}
        if ville2 not in connected:
            connected[ville2] = {ville2}
    
    # Parcourir les arêtes triées
    for arete in sorted_aretes:
        ville1, ville2, distance = arete
        if connected[ville1] != connected[ville2]:
            # Ajouter l'arête à l'arbre de recouvrement minimal
            mst.append(arete)
            
            # Fusionner les ensembles de villes connectées
            nouveau_connecte = connected[ville1].union(connected[ville2])
            for ville in nouveau_connecte:
                connected[ville] = nouveau_connecte
            
            # Arrêter si toutes les villes sont connectées
            if len(mst) == len(connected) - 1:
                break
    
    return mst

# Liste des arêtes du graphe
aretes = [
    ("LILLE", "ROUBAIX", 15),
    ("LILLE", "PARIS", 221),
    ("LILLE", "STRASBOURG", 520),
    ("PARIS", "RENNES", 354),
    ("PARIS", "TOURS", 240),
    ("PARIS", "STRASBOURG", 491),
    ("RENNES", "TOURS", 230),
    ("TOURS", "BOURGES", 180),
    ("STRASBOURG", "BOURGES", 530)
]

# Exécuter l'algorithme
arbre_recouvrement_minimal = kruskal_simple(aretes)

# Afficher le résultat
print("Arbre de recouvrement minimal:")
for arete in arbre_recouvrement_minimal:
    print(f"{arete[0]} - {arete[1]} : {arete[2]} km")
