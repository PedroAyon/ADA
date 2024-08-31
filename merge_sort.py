def merge(arr, left, mid, right):
    L = arr[left:mid + 1]
    R = arr[mid + 1:right + 1]

    left_index = 0
    right_index = 0
    i = left

    # Merge L and R into arr
    while left_index < len(L) and right_index < len(R):
        if L[left_index] <= R[right_index]:
            arr[i] = L[left_index]
            left_index += 1
        else:
            arr[i] = R[right_index]
            right_index += 1
        i += 1

    # Copy any remaining elements of L, if any
    while left_index < len(L):
        arr[i] = L[left_index]
        left_index += 1
        i += 1

    # Copy any remaining elements of R, if any
    while right_index < len(R):
        arr[i] = R[right_index]
        right_index += 1
        i += 1

def merge_sort(arr, left, right):
    if left < right:
        mid = (left + right) // 2

        merge_sort(arr, left, mid)
        merge_sort(arr, mid + 1, right)
        merge(arr, left, mid, right)

def print_list(arr):
    print(" ".join(map(str, arr)))

if __name__ == "__main__":
    arr = [12, 11, 13, 5, 6, 7]
    merge_sort(arr, 0, len(arr) - 1)
    print_list(arr)
