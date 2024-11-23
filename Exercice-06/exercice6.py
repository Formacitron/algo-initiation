age = 0

print("Quel est votre âge ?")
age = int(input())

if (age < 12):
    print("Bienvenue dans l'aire de jeux pour enfants !")
else:
    if (age <= 18):
        print("Les montagnes russes vous attendent !")
    else:
        print("Profitez de toutes nos attractions !")
