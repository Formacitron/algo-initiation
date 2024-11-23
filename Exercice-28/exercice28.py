def triSelection(tableau):
    n = len(tableau)
    for i in range(n):
        min_idx = i
        for j in range(i+1, n):
            if tableau[j] < tableau[min_idx]:
                min_idx = j
        
        # Échange
        temp = tableau[i]
        tableau[i] = tableau[min_idx]
        tableau[min_idx] = temp

# Programme principal
tableau = [64, 25, 12, 22, 11]
print("Tableau avant le tri:", tableau)

triSelection(tableau)

print("Tableau après le tri:", tableau)
