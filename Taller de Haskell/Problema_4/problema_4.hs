-- Importamos System.IO para operaciones de entrada/salida
import System.IO
-- Función principal del programa
main :: IO ()
main = do
    -- Mostramos un mensaje solicitando al usuario que ingrese un número
    putStrLn "Digite un número:"
    -- Leemos la entrada del usuario como una cadena de texto
    entrada <- getLine
    -- Convertimos la cadena a un número entero (Int)
    let a = read entrada :: Int
    -- Verificamos si el número es divisible entre 2 usando el operador `mod`
    -- Si el residuo es 0, el número es par
    if a `mod` 2 == 0
        then putStrLn (show a ++ " es par")     -- Mostramos que el número es par
        else putStrLn (show a ++ " no es par")  -- Mostramos que el número es impar
