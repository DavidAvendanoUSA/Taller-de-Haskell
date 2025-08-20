## Creamos una varible edad, donde se guarda el input del usuario como un entero
edad = int(input("Digite su edad: "))

## Usamos un if para comparar la edad del usuario con la edad minima para ser mayor de edad, se utiliza >= para poder tomar tambien el valor de 18 como valido
if edad >= 18: 
    print("Es mayor de edad.")
else: 
    print ("No es mayor de edad.")