def entasser(tableau, n, i):
    plus_grand = i
    gauche = 2 * i + 1
    droite = 2 * i + 2

    if gauche < n and tableau[gauche] > tableau[plus_grand]:
        plus_grand = gauche

    if droite < n and tableau[droite] > tableau[plus_grand]:
        plus_grand = droite

    if plus_grand != i:
        tableau[i], tableau[plus_grand] = tableau[plus_grand], tableau[i]
        entasser(tableau, n, plus_grand)

def construireMaxTas(tableau):
    n = len(tableau)
    for i in range(n // 2 - 1, -1, -1):
        entasser(tableau, n, i)

def triTas(tableau):
    n = len(tableau)
    construireMaxTas(tableau)

    for i in range(n-1, 0, -1):
        tableau[0], tableau[i] = tableau[i], tableau[0]
        entasser(tableau, i, 0)

# Programme principal
tableau = [12, 11, 13, 5, 6, 7]
print("Tableau avant le tri:", tableau)

triTas(tableau)

print("Tableau après le tri:", tableau)
