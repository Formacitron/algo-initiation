import os

mot = ""

def est_une_lettre(texte):
    if len(texte)!=1 or texte not in "abcdefghijklmnopqrstuvwxyz":
        return False
    return True

def est_un_mot(texte):
    for caractere in texte:
        if not est_une_lettre(caractere):
            return False
    return True

def remplacer_index(chaine, index, caractere):
    return chaine[:index]+caractere+chaine[index+1:]

# Saisie du mot à trouver
while 1:
    print("Saisissez un mot à deviner (uniquement des lettres minuscules sans accent)")
    mot = input("Mot:")
    if est_un_mot(mot):
        break;

os.system("clear")

recherche = "_" * len(mot)
essais = 10
while essais > 0 and recherche != mot:
    print(recherche, "reste", essais, "essais")
    lettre = " "
    while not est_une_lettre(lettre):
        lettre = input("Entrez une lettre : ")
    trouve = False
    for index, caractere in enumerate(mot):
        if lettre == caractere:
            if recherche[index] != "_":
                print("Vous avez déjà proposé cette lettre")
                break
            else:
                recherche = remplacer_index(recherche,index,lettre)
                trouve = True
    if not trouve:
        essais -= 1
if recherche == mot:
    print("Bravo !")
else:
    print("Perdu !")

    


    

