import random

nombre = int(random.random()*100)
tentatives = 1

while 1:
    try:
        choix = int(input("Saisissez un nombre entre 0 et 100 : "))
    except Exception:
        continue
    if choix == nombre:
        print(f"Bravo ! Vous avez trouvé en {tentatives} tentatives")
        break
    else:
        if choix > nombre:
            print("Trop grand")
        else:
            print("Trop petit")
        tentatives += 1

