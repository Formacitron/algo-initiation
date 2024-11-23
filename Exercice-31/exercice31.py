def partition(tableau, bas, haut):
    pivot = tableau[haut]
    i = bas - 1
    
    for j in range(bas, haut):
        if tableau[j] <= pivot:
            i += 1
            tableau[i], tableau[j] = tableau[j], tableau[i]
    
    tableau[i + 1], tableau[haut] = tableau[haut], tableau[i + 1]
    return i + 1

def triRapide(tableau, bas, haut):
    if bas < haut:
        pi = partition(tableau, bas, haut)
        triRapide(tableau, bas, pi - 1)
        triRapide(tableau, pi + 1, haut)

# Programme principal
tableau = [10, 7, 8, 9, 1, 5]
print("Tableau avant le tri:", tableau)

triRapide(tableau, 0, len(tableau) - 1)

print("Tableau après le tri:", tableau)
