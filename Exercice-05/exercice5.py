a = float(input("Entrez A: "))
b = float(input("Entrez B: "))

print("A=", end="")
print(a, end="")
print(", B=", end="")
print(b)

c = a
a = b
b = c

print("Après échange A=", end="")
print(a, end="")
print(", B=", end="")
print(b)
