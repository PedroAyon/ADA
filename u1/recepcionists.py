def min_time_to_register(n, m, receptionist_dispatch_times):
    def can_register_all(mid):
        return sum(mid // t for t in receptionist_dispatch_times) >= m

    left, high = 1, m * min(receptionist_dispatch_times) # M * min(tiempos) es el maximo tiempo minimo que se puede tardar

    while left < high:
        mid = (left + high) // 2
        if can_register_all(mid):
            high = mid
        else:
            left = mid + 1

    return left


N, M = map(int, input().split())
times = [int(input()) for _ in range(N)]

print(min_time_to_register(N, M, times))
