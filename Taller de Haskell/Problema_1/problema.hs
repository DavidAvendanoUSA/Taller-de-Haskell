-- Importamos el módulo necesario para trabajar con entrada/salida
import System.IO

main :: IO ()
main = do
    -- Solicitamos al usuario que digite su edad
    putStrLn "Digite su edad: "
    
    -- Leemos la entrada como cadena y la convertimos a entero
    entrada <- getLine
    let edad = read entrada :: Int

    -- Comparamos la edad con 18 para determinar si es mayor de edad
    if edad >= 18
        then putStrLn "Es mayor de edad."
        else putStrLn "No es mayor de edad."
