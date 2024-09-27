import numpy as np

def merge(arr, left, mid, right):
    left_part = arr[left:mid + 1]
    right_part = arr[mid + 1:right + 1]

    n1 = len(left_part)
    n2 = len(right_part)

    i = j = 0
    k = left

    while i < n1 and j < n2:
        if left_part[i] <= right_part[j]:
            arr[k] = left_part[i]
            i += 1
        else:
            arr[k] = right_part[j]
            j += 1
        k += 1

    while i < n1:
        arr[k] = left_part[i]
        i += 1
        k += 1

    while j < n2:
        arr[k] = right_part[j]
        j += 1
        k += 1


def merge_sort(arr, left=0, right=None):
    if right is None:
        right = len(arr) - 1
    if left < right:
        mid = (left + right) // 2

        merge_sort(arr, left, mid)
        merge_sort(arr, mid + 1, right)
        merge(arr, left, mid, right)


a1 = [0, 10, 5, 3, 20]
a2 = [3, 1, 15, 7, 8, 2]
a3 = np.random.randint(1, 10000, 1000).tolist() # converting to list because numpy array does not support

merge_sort(a1)
print("a1:", a1)

merge_sort(a2)
print("a2:", a2)

merge_sort(a3)
print("a3:")
for i in range(0, len(a3), 20):
     print(a3[i:i+20])