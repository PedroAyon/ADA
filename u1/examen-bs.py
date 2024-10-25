# binary search
from math import floor


def search(arr, l, r, target):
    if l > r:
        return -1
    m = floor((l + r) / 2)
    if arr[m] == target:
        return m
    if arr[m] > target:
        return search(arr, l, m - 1, target)
    return search(arr, m + 1, r, target)

A = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12]
print(search(A, 0, len(A) - 1, 9))
print(search(A, 0, len(A) - 1, 11))
