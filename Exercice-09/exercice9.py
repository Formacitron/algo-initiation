nb = 0
i = 0
resultat = 0

print("Choisissez un nombre entre 1 et 10 : ")
nb = int(input())

for i in range(1, 11):
    resultat = nb * i
    print(nb, end="")
    print(" x ", end="")
    print(i, end="")
    print(" = ", end="")
    print(resultat, end="")
    if (resultat % 2 == 0):
        print(" Pair !", end="")
    print(" ")
