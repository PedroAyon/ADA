def voraz_cambio(monto, denominaciones):
    n = len(denominaciones)
    pos = -1
    suma = 0
    num_billetes = [0] * n
    paso_a_paso = []

    while suma < monto:
        pos = seleccion_voraz(monto - suma, n, denominaciones)

        if pos >= n:
            return "No se encontró la solución"

        num_billetes[pos] += 1
        resta = monto - suma - denominaciones[pos]
        paso_a_paso.append({'moneda': denominaciones[pos], 'resta': resta})

        suma += denominaciones[pos]

    return {'billetes': num_billetes, 'paso_a_paso': paso_a_paso}


def seleccion_voraz(resto, n, denominaciones):
    i = 0
    while i < n and denominaciones[i] > resto:
        i += 1
    return i


def imprimir_salida(resultado, denominaciones):
    print("SALIDA COMPACTA:")
    billetes = resultado['billetes']
    paso_a_paso = resultado['paso_a_paso']

    lista_billetes = [denominaciones[i] for i in range(len(denominaciones)) for _ in range(billetes[i])]
    print("[", ", ".join(map(str, lista_billetes)), "]")

    tuplas = [f"({p['moneda']}, {p['resta']})" for p in paso_a_paso]
    print("(", ", ".join(tuplas), ")\n")

    print("SALIDA INTERPRETADA:")
    monedas_utilizadas = [denominaciones[i] for i in range(len(billetes)) if billetes[i] > 0]
    print("Monedas utilizadas:", ", ".join(map(str, monedas_utilizadas)))

    print("Ejecucion paso a paso:")
    for i, p in enumerate(paso_a_paso):
        print(f"{i + 1}. Usas una moneda de {p['moneda']}, queda por devolver {p['resta']}.")


monto = 93
denominaciones = [50, 20, 10, 5, 2, 1]

resultado = voraz_cambio(monto, denominaciones)

imprimir_salida(resultado, denominaciones)
