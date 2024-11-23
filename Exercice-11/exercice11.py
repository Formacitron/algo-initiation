inventaire = [0] * 5
i = 0
produit = 0
quantite = 0

for i in range(5):
    inventaire[i] = 0

inventaire[0] = 10
inventaire[1] = 15
inventaire[2] = 5
inventaire[3] = 20
inventaire[4] = 8

print("Inventaire initial :")
for i in range(5):
    print("Produit ", end="")
    print(i, end="")
    print(" : ", end="")
    print(inventaire[i], end="")
    print(" unités", end="")
    print(" ")

print("Quel produit souhaitez-vous acheter (0-4) ?")
produit = int(input())
print("Quelle quantité ?")
quantite = int(input())

if (quantite <= inventaire[produit]):
    inventaire[produit] = inventaire[produit] - quantite
    print("Achat effectué. Nouvel inventaire :")
else:
    print("Quantité insuffisante. Inventaire inchangé :")

for i in range(5):
    print("Produit ", end="")
    print(i, end="")
    print(" : ", end="")
    print(inventaire[i], end="")
    print(" unités", end="")
    print(" ")
