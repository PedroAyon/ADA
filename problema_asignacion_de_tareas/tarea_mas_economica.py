import numpy as np


def ya_asignada(n, tarea, tareas):
    for trabajador in range(n):
        if tareas[trabajador] == tarea:
            return True
    return False


def asigna_tareas(n, costo, trabajador, tareas):
    min_costo = float('inf')  # Un número grande para comparar
    tarea_elegida = -1

    # Busca la tarea más económica que no ha sido asignada
    for tarea in range(n):
        if not ya_asignada(n, tarea, tareas):
            if costo[trabajador][tarea] < min_costo:
                min_costo = costo[trabajador][tarea]
                tarea_elegida = tarea

    tareas[trabajador] = tarea_elegida


def calcula_costo(costo, tareas):
    suma = 0
    # Calcula el costo total de la asignación de tareas
    for trabajador in range(len(tareas)):
        tarea = tareas[trabajador]
        suma += costo[trabajador][tarea]
    return suma


def optimiza_tareas(n, costo):
    tareas = [-1] * n  # Inicializar el array de tareas sin asignar
    for trabajador in range(n):
        asigna_tareas(n, costo, trabajador, tareas)

    costo_total = calcula_costo(costo, tareas)
    return costo_total, tareas


# Ejemplo de uso con los costos proporcionados
costos = np.array([
    [10, 15, 7, 20, 12],
    [3, 4, 5, 8, 9],
    [10, 12, 11, 17, 21],
    [11, 15, 23, 10, 4],
    [3, 8, 21, 31, 4]
])

n = len(costos)  # Número de trabajadores/tareas
costo, asignacion = optimiza_tareas(n, costos)

print("Asignación de tareas:", asignacion)
print("Costo total:", costo)
