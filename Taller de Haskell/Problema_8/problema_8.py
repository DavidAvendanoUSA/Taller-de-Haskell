# Solicita al usuario que ingrese su edad
# Convierte la entrada a un número entero
edad = int(input("Digite su edad: "))
# Define el precio base del boleto
boleto = 10000
# Evalúa el precio del boleto según la edad del usuario
if edad <= 2:
    # Niños de 2 años o menos no pagan boleto
    print("El precio del boleto es: $0")
elif edad <= 12:
    # Niños entre 3 y 12 años reciben un 45% de descuento
    descuento = boleto * 0.45
    precio_final = boleto - descuento
    print(f"El valor del boleto es de ${precio_final}")
elif edad <= 59:
    # Adultos entre 13 y 59 años pagan el precio completo
    descuento = 0
    precio_final = boleto - descuento
    print(f"El valor del boleto es de ${precio_final}")
else:
    # Adultos mayores de 60 años reciben un 35% de descuento
    descuento = boleto * 0.35
    precio_final = boleto - descuento
    print(f"El valor del boleto es de ${precio_final}")
