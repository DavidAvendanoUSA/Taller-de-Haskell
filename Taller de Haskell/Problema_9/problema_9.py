# Solicita al usuario si desea una pizza vegana
opcion = input("¿Pizza vegana? (S/N): ").upper()
# Verifica si la opción es vegana
if opcion == "S":
    print("Ingredientes base de la pizza vegana:")
    print("1. Champiñones")
    print("2. Pimientos asados")
    print("3. Aceitunas negras")
    print("4. Cebolla caramelizada")
    print("5. Queso vegano")
    # Pregunta si desea albahaca fresca como ingrediente extra
    extra = input("¿Quieres albahaca fresca como ingrediente extra? (S/N): ").upper()
    # Verifica si el usuario quiere albahaca fresca
    if extra == "S":
        print("\nLa pizza vegana que pediste tiene:")
        print("1. Champiñones")
        print("2. Pimientos asados")
        print("3. Aceitunas negras")
        print("4. Cebolla caramelizada")
        print("5. Queso vegano")
        print("6. Albahaca fresca")
    elif extra == "N":
        print("\nLa pizza vegana que pediste tiene:")
        print("1. Champiñones")
        print("2. Pimientos asados")
        print("3. Aceitunas negras")
        print("4. Cebolla caramelizada")
        print("5. Queso vegano")
    else:
        print("Opción inválida para ingrediente extra. Por favor responde con 'S' o 'N'.")
# Verifica si la opción es pizza normal
elif opcion == "N":
    print("La pizza normal que pediste tiene:")
    print("1. Queso")
    print("2. Pepperoni")
    print("3. Jamón")
    print("4. Champiñones")
    print("5. Pimientos")
# Manejo de errores si la entrada no es válida
else:
    print("Opción inválida. Por favor responde con 'S' para pizza vegana o 'N' para pizza normal.")
