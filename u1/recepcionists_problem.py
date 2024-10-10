def min_time_to_register(m, receptionist_dispatch_times):
    def can_register_all(mid):
        return sum(mid // t for t in receptionist_dispatch_times) >= m

    left, right = 1, m * min(receptionist_dispatch_times) # M * min(tiempos) es el maximo tiempo minimo que se puedem tardar en atender a todos

    while left < right:
        mid = (left + right) // 2
        if can_register_all(mid):
            right = mid
        else:
            left = mid + 1

    return left


N, M = map(int, input().split())
times = [int(input()) for _ in range(N)]

print(min_time_to_register(M, times))
