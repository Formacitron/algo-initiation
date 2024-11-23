total_pas = 0
pas_ajout = 0
continuer = ""

total_pas = 0
print("Voulez-vous ajouter des pas ? (oui/non)")
continuer = input()

while (continuer != "non"):
    print("Combien de pas avez-vous fait ?")
    pas_ajout = int(input())
    total_pas = total_pas + pas_ajout
    print("Voulez-vous ajouter plus de pas ? (oui/non)")
    continuer = input()

print("Nombre total de pas : ")
print(total_pas)
