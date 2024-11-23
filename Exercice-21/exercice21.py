pile = []

def empiler(pile, valeur):
    # pile.append(valeur)
    pile.insert(len(pile), valeur)

def depiler(pile):
    # return pile.pop(0)
    if (len(pile) == 0):
        return None
    valeur = pile[len(pile) - 1]
    del pile[len(pile) - 1]
    return valeur

chaine = "algorithmique"

for i in range(len(chaine)):
    empiler(pile,chaine[i])

inverse = ""
while (c := depiler(pile)) != None:
    inverse = inverse + c
print(inverse)
