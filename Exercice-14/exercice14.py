def euroToDollar(euros):
    taux = 0
    taux = 1.18
    return euros * taux

montantEuros = 0
montantDollars = 0

print("Entrez un montant en euros : ", end="")
montantEuros = float(input())
montantDollars = euroToDollar(montantEuros)
print(montantEuros, end="")
print(" euros équivalent à ", end="")
print(montantDollars, end="")
print(" dollars.")
