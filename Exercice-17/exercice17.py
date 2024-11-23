def compteARebours(n):
    if n > 0:
        print(n)
        compteARebours(n - 1)
    else:
        print("Décollage !")

print("Entrez un nombre de départ pour le compte à rebours : ", end="")
nombre_depart = int(input())
compteARebours(nombre_depart)
