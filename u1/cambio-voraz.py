from math import floor

denominaciones = [1000, 500, 200, 100, 50, 20, 10, 5, 2, 1]

def cambio(n):
    cantidades = []
    for d in denominaciones:
        if n == 0:
            break
        cantidad = int(floor(n / d))
        n = n % d
        [cantidades.append(d) for _ in range(cantidad)]
    return cantidades

print(cambio(2968))