import os

plateau = [["_" for i in range(3)] for i in range(3)]
plateau[0][0] = "X"
plateau[1][1] = "X"

pions = [ "X", "O" ]
joueur = 0

while 1:
    for i in range(3):
        for j in range(3):
            print(plateau[i][j]," ",end="")
        print()
    c, l = 0,0
    print("Joueur ", joueur+1)
    while 1:
        try:
            c = int(input("Entrez une colonne entre 1 et 3 : "))
            if c<1 or c>3:
                continue
        except Exception:
            continue
        try:
            l = int(input("Entrez une ligne entre 1 et 3 : "))
            if l<1 or l>3:
                continue
        except Exception:
            continue

        if plateau[l-1][c-1] != "_":
            print("Il y a déjà un pion ici !")
            continue
        else:
            break

    plateau[l-1][c-1] = pions[joueur]


    for j in range(2):
        compteur = 0
        for l in range(3):
            x, y = 0, 0
            for c in range(3):
                if plateau[c][l] != "_":
                    compteur += 1
                if plateau[l][c] == pions[j]:
                    x = x + 1
                if plateau[c][l] == pions[j]:
                    y = y + 1
            if x == 3 or y == 3:
                print(f"Joueur {j+1} gagne")
                exit(0)

        da, db = 0,0
        for d in range(3):
            if plateau[d][d] == pions[j]:
                da += 1
            if plateau[2-d][d] == pions[j]:
                db += 1
        if da == 3 or db == 3:
            print(f"Joueur {j+1} gagne")
            exit(0)

        if compteur == 9:
            print(f"Match nul")
            exit(0)

    joueur = 1 - joueur 

