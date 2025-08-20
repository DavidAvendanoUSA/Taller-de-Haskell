-- Importamos el módulo necesario para trabajar con entrada/salida
import System.IO
-- Importamos toLower desde Data.Char para convertir caracteres a minúsculas
import Data.Char (toLower)

-- Definimos una función que convierte una cadena completa a minúsculas
-- Utiliza map para aplicar toLower a cada carácter de la cadena
toLowerStr :: String -> String
toLowerStr = map toLower

-- Función principal del programa
main :: IO ()
main = do
    -- Definimos la contraseña original del sistema
    let systemPassword = "estoesunaprueba"

    -- Solicitamos al usuario que ingrese una contraseña
    putStrLn "Ingrese la contraseña: "

    -- Capturamos la entrada del usuario desde la consola
    userInput <- getLine

    -- Comparamos ambas contraseñas ignorando mayúsculas/minúsculas
    -- Si coinciden, mostramos un mensaje de éxito
    -- Si no coinciden, mostramos un mensaje de error
    if toLowerStr userInput == toLowerStr systemPassword
        then putStrLn "Las contraseñas coinciden."
        else putStrLn "Las contraseñas no coinciden."
