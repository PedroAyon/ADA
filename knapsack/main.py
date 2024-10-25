W = 11
v = [60, 100, 120]
w = [10, 20, 30]

def knapsack(W, v, w):
    m = []
    for i in range(0, len(v) + 1):
        subarr = []
        for j in range(0, W + 1):
            subarr.append(0)
        m.append(subarr)

    print(m)
    for i in range(0, len(v)):
        for j in range(0, W + 1):
            if j < w[i]:
                m[i+1][j] = m[i][j]
            else:
                m[i+1][j] = max(m[i][j], v[i] + m[i][j - w[i]])
    i, j = len(v), W
    cont = m[i][j]
    resultados = []
    while cont > 0:
        while j > 0:
            if m[i][j - 1] != cont:
                break
            j -= 1
        while i > 0:
            if m[i - 1][j] != cont:
                break
            i -= i
        valor_tomado = v[i]
        resultados.append(valor_tomado)
        cont -= valor_tomado
        j = j - valor_tomado


    return m

print(knapsack(W, v, w))