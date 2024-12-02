def knapSack(W, wt, val, n):
    K = [[0 for _ in range(W + 1)] for _ in range(n + 1)]

    for i in range(n + 1):
        for w in range(W + 1):
            if i == 0 or w == 0:
                K[i][w] = 0
            elif wt[i - 1] <= w:
                K[i][w] = max(val[i - 1]
                              + K[i-1][w - wt[i - 1]],
                              K[i-1][w])
            else:
                K[i][w] = K[i-1][w]

    return {"max_profit": K[n][W], "matrix": K}


if __name__ == '__main__':
    profit = [60, 100, 120]
    weight = [10, 20, 30]
    W = 11
    n = len(profit)
    print(knapSack(W, weight, profit, n))