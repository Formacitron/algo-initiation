notes = []
compteur = 0
note = 0
i = 0

note = 0
compteur = 0

while note >= 0:
    print("Entrez une note: ", end="")
    note = float(input())
    if note >= 0:
        notes.append(note)
        compteur = compteur + 1

note = 0

for i in range(0, compteur):
    note = note + notes[i]

print("La moyenne est : ", end="")
print(note / compteur)
