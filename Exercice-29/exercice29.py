def triInsertion(tableau):
    for i in range(1, len(tableau)):
        cle = tableau[i]
        j = i-1
        while j >= 0 and cle < tableau[j]:
            tableau[j+1] = tableau[j]
            j -= 1
        tableau[j+1] = cle

# Programme principal
tableau = [12, 11, 13, 5, 6]
print("Tableau avant le tri:", tableau)

triInsertion(tableau)

print("Tableau après le tri:", tableau)
