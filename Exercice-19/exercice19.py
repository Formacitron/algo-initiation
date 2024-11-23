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

def parentheses(phrase):
    pile = []
    for i in range(len(phrase)):
        if phrase[i] == "(":
            empiler(pile,"(")
        else:
            if phrase[i] == ")":
                res = depiler(pile)
                if res == None:
                    return False
    if len(pile) != 0:
        return False
    return True

print("((a+b)*(c-d))")
if parentheses("((a+b)*(c-d))"):
    print("ok")
else:
    print("ko")


print("((a+b)*(c-d)")
if parentheses("((a+b)*(c-d)"):
    print("ok")
else:
    print("ko")

print("((a+b)*(c-d)))")
if parentheses("((a+b)*(c-d)))"):
    print("ok")
else:
    print("ko")
