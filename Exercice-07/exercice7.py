force = ""
lait = ""

print("Préférez-vous un café fort ou léger ? (fort/leger)")
force = input()

print("Souhaitez-vous du lait ? (oui/non)")
lait = input()

if (force == "fort"):
    if (lait == "oui"):
        print("Voici un cappuccino !")
    else:
        print("Voici un expresso !")
else:
    if (lait == "oui"):
        print("Voici un café latte !")
    else:
        print("Voici un café américain !")
