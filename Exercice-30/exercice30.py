def fusion(gauche, droite):
    resultat = []
    i, j = 0, 0
    while i < len(gauche) and j < len(droite):
        if gauche[i] <= droite[j]:
            resultat.append(gauche[i])
            i += 1
        else:
            resultat.append(droite[j])
            j += 1
    resultat.extend(gauche[i:])
    resultat.extend(droite[j:])
    return resultat

def triFusion(tableau):
    if len(tableau) <= 1:
        return tableau
    
    milieu = len(tableau) // 2
    gauche = triFusion(tableau[:milieu])
    droite = triFusion(tableau[milieu:])
    
    return fusion(gauche, droite)

# Programme principal
tableau = [38, 27, 43, 3, 9, 82, 10]
print("Tableau avant le tri:", tableau)

tableau_trie = triFusion(tableau)

print("Tableau après le tri:", tableau_trie)
