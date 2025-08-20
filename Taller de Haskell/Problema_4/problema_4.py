# Solicita al usuario que ingrese un número y lo convierte a entero
a = int(input("Digite un número: "))
# Verifica si el número es divisible entre 2 (es decir, si es par)
if a % 2 == 0: 
    # Si el resto de la división entre 2 es 0, el número es par
    print(f"{a} es par")
else: 
    # Si el resto no es 0, el número es impar
    print(f"{a} no es par")
