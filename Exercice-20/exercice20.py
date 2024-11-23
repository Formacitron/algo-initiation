file = []

def enfiler(file,valeur):
    file.append(valeur)

def defiler(file):
    valeur = file[0]
    del file[0]
    return valeur

enfiler(file, "Bob")
enfiler(file, "Alice")
enfiler(file, "Charlie")
client = defiler(file)
enfiler(file, "David")

for i in range(0, len(file)):
    print(file[i])
