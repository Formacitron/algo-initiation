def calculIMC(poids, taille):
    imc = 0
    imc = poids / (taille * taille)
    return imc

poids = 0
taille = 0
resultatIMC = 0

print("Entrez votre poids en kg : ", end="")
poids = float(input())
print("Entrez votre taille en mètres : ", end="")
taille = float(input())
resultatIMC = calculIMC(poids, taille)
print("Votre IMC est de : ", end="")
print(resultatIMC)
