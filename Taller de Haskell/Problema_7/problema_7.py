# Solicita al usuario que ingrese su puntuación de rendimiento
# Convierte la entrada a un número entero
puntuacion = int(input("Digite su puntuación: "))
# Solicita al usuario que ingrese su salario base
# Convierte la entrada a un número entero
salario = int(input("Digite su salario: "))
# Evalúa el nivel de rendimiento según la puntuación ingresada
if puntuacion <= 30:
    # Si la puntuación es 30 o menos, el rendimiento necesita mejorar
    # No se aplica incentivo, se muestra el salario base
    print(f"Su nivel de rendimiento necesita mejorar, su salario total es de {salario}")
elif puntuacion <= 60:
    # Si la puntuación está entre 31 y 60, el rendimiento es bueno
    # Se aplica un incentivo del 5% sobre el salario
    incentivo = salario * 0.05
    salario_total = salario + incentivo
    print(f"Su nivel de rendimiento es bueno, su salario total es de {salario_total}")
elif puntuacion <= 80:
    # Si la puntuación está entre 61 y 80, el rendimiento es muy bueno
    # Se aplica un incentivo del 10% sobre el salario
    incentivo = salario * 0.10
    salario_total = salario + incentivo
    print(f"Su nivel de rendimiento es muy bueno, su salario total es de {salario_total}")
elif puntuacion <= 100:
    # Si la puntuación está entre 81 y 100, el rendimiento es excelente
    # Se aplica un incentivo del 20% sobre el salario
    incentivo = salario * 0.20
    salario_total = salario + incentivo
    print(f"Su nivel de rendimiento es excelente, su salario total es de {salario_total}")
else: 
    # Si la puntuación ingresada es mayor a 100, se considera inválida
    # Se muestra un mensaje de error indicando el rango permitido (0 a 100)
    # No se realiza ningún cálculo de incentivo ni se imprime salario total
    print("Error: la puntuación debe estar en el rango de 0 a 100.")
