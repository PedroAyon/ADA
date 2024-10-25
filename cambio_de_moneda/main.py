def cambio(D, n, C):
    M = [float('inf')] * (C + 1)
    S = [0] * (C + 1)
    M[0] = 0

    m = 1
    while m <= n and D[m - 1] <= C:
        m += 1

    n = m - 1

    for i in range(1, C + 1):
        min_val = float('inf')
        moneda = -1
        for j in range(n):
            if i - D[j] >= 0 and 1 + M[i - D[j]] < min_val:
                min_val = 1 + M[i - D[j]]
                moneda = D[j]
        M[i] = min_val
        S[i] = moneda

    return {"M": M, "S": S}

def monedas(S):
    m = []
    n = len(S) - 1
    while n > 0 and S[n] > 0:
        m.append(S[n])
        n = n - S[n]
    return m

D = [1, 5, 10, 15, 21, 25]
n = 6
C = 10

result = cambio(D, n, C)
print(result)

print(monedas(result['S']))
