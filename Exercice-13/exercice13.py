matrix = [
        [ 1, 2, 3 ],
        [ 4, 5, 6 ],
        [ 7, 8, 9 ]
        ]

# Affichage de la matrice
for line in matrix:
    for value in line:
        print(value," ",end="")
    print()


# Il faut que le tableau de sortie ait une taille équivalente

# Solution habituelle en Python
# sortie = [[0 for i in range(3)] for j in range(3)]

# Solution moins spécifique à Python
sortie = []
for y in range(3):
    sortie.append([])
    for x in range(3):
        sortie[y].append(0)

# Transposée de la matrice
for y in range(3):
    for x in range(3):
        sortie[x][y] = matrix[y][x]

# Affichage de la matrice transposée
for line in sortie:
    for value in line:
        print(value," ",end="")
    print()
