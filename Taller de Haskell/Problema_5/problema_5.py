# Solicita al usuario que ingrese su edad y convierte la entrada a un número entero
edad = int(input("Ingrese su edad: "))    
# Solicita al usuario que ingrese sus ingresos mensuales en pesos colombianos (COP)
# Convierte la entrada a un número decimal (float) para permitir valores con centavos
ingresos = float(input("Ingrese sus ingresos mensuales en COP: "))
# Verifica si el usuario cumple con los criterios para pagar impuestos:
# Tener 18 años o más
# Tener ingresos mensuales superiores a $5,500,000 COP
if edad >= 18 and ingresos > 5500000:
    # Si cumple ambos criterios, se indica que debe pagar impuestos
    print("Debe pagar impuestos.")
else:
    # Si no cumple alguno de los criterios, se indica que no está obligado a pagar impuestos
    print("No está obligado a pagar impuestos.")
