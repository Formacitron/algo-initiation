def fibonacci(n):
    if n <= 1:
        return n
    else:
        return fibonacci(n-1) + fibonacci(n-2)

n = 0
resultat = 0

print("Entrez le rang n de la suite de Fibonacci : ", end="")
n = int(input())
resultat = fibonacci(n)
print("Le ", end="")
print(n, end="")
print("-ième terme de la suite de Fibonacci est : ", end="")
print(resultat)
