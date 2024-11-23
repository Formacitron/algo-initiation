temperatures = [0] * 7
i = 0
max = 0
min = 0
somme = 0
moyenne = 0

for i in range(0, 7):
    temperatures[i] = 0

temperatures[0] = 22
temperatures[1] = 19
temperatures[2] = 24
temperatures[3] = 21
temperatures[4] = 18
temperatures[5] = 23
temperatures[6] = 20

max = temperatures[0]
min = temperatures[0]
somme = 0

for i in range(0, 7):
    if temperatures[i] > max:
        max = temperatures[i]
    if temperatures[i] < min:
        min = temperatures[i]
    somme = somme + temperatures[i]

moyenne = somme / 7

print("Température la plus élevée : ", end="")
print(max)
print("Température la plus basse : ", end="")
print(min)
print("Température moyenne : ", end="")
print(moyenne)
