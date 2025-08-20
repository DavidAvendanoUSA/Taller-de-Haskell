# Almacenar la contraseña original
systempasword = "estoesunaprueba"

# Pedir al usuario que ingrese una contraseña
userpasword = input("Ingrese la contraseña: ")

# Comparar sin distinguir mayúsculas y minúsculas
# .lower convierte el texto a minúsculas, lo que permite hacer una comparación sin importar si el usuario escribió con mayúsculas o no.
if userpasword.lower() == systempasword.lower():
    print("Las contraseñas coinciden.")
else:
    print("Las contraseñas no coinciden.")
