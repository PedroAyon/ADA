# data
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# promedio
sum = 0
for x in a:
    sum += x
print(sum/len(a))

# invertir elementos
i = 0
j = len(a) - 1
while i < j:
    aux = a[i]
    a[i] = a[j]
    a[j] = aux
    i += 1
    j -= 1
print(a)

# sumar 2 arreglos de diferente longitud
if len(a) >= len(b):
    for i in range(len(b)):
        a[i] += b[i]
    print(a)

else:
    for i in range(len(a)):
        b[i] += a[i]
    print(b)
