meses = ['marzo', 'abril', 'mayo', 'junio', 'julio', 'agosto', 'septiembre']
print(meses[1:4])
meses.insert(0, 'enero')
meses.insert(1, 'febrero')
meses.extend(['octubre', 'noviembre', 'diciembre'])
print(meses)

for i in range(10, -1, -2):
    meses.pop(i)
print(meses)


lista1 = [i for i in range(1, 21)]
print(lista1)

lista2 = [i for i in range(1, 21) if i % 2 == 0]
print(lista2)

lista3 = [i for i in range(3, 21, 3)]
print(lista3)