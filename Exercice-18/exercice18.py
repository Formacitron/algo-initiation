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

empiler(pile,"Harry Potter")
empiler(pile,"Le Seigneur des Anneaux")
empiler(pile,"1984")
livre = depiler(pile)
empiler(pile,"Dune")

for i in range(0, len(pile)):
    print(pile[i])
