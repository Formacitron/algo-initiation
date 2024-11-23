def triBulles(tableau):
    n = len(tableau)
    for i in range(n):
        for j in range(0, n-i-1):
            if tableau[j] > tableau[j+1]:
                # Échange
                temp = tableau[j]
                tableau[j] = tableau[j+1]
                tableau[j+1] = temp

# Programme principal
tableau = [64, 34, 25, 12, 22, 11, 90]
print("Tableau avant le tri:", tableau)

triBulles(tableau)

print("Tableau après le tri:", tableau)
