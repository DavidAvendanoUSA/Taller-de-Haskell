# Solicita el nombre del usuario y lo almacena en la variable 'nombre'
nombre = input("Ingrese su nombre: ")
# Solicita el género del usuario (esperando 'M' para masculino o 'F' para femenino)
# Convierte la entrada a mayúsculas para evitar errores por diferencias de formato
genero = input("Ingrese su género (M/F): ").upper()
# Utiliza lógica condicional para asignar un grupo y una tarea según el género ingresado
if genero == "M":
    # Si el género es masculino, asigna al Grupo A con la Tarea 1
    grupo = "Grupo A"
    tarea = "Tarea 1"
elif genero == "F":
    # Si el género es femenino, asigna al Grupo B con la Tarea 2
    grupo = "Grupo B"
    tarea = "Tarea 2"
else:
    # Si el género no es reconocido, muestra un mensaje de error y termina el programa
    print("Error: Género no reconocido. Por favor ingrese 'M' o 'F'.")
    exit()
# Imprime el grupo y la tarea asignados al usuario
print(f"{nombre}, eres del grupo: {grupo}.")
print(f"Tu tarea es: {tarea}")
