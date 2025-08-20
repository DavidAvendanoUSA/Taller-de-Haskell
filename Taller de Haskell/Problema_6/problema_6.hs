-- Importamos funciones necesarias para entrada/salida y manipulación de texto
import System.IO (hFlush, stdout)
import Data.Char (toUpper)
-- Solicita al usuario su nombre y género, y luego asigna un grupo y tarea en base al género.
main :: IO ()
main = do
    -- Solicita el nombre del usuario y lo almacena en la variable 'nombre'
    putStr "Ingrese su nombre: "
    hFlush stdout
    nombre <- getLine
    -- Solicita el género del usuario (esperando 'M' para masculino o 'F' para femenino)
    putStr "Ingrese su género (M/F): "
    hFlush stdout
    generoInput <- getLine
    let genero = map toUpper generoInput
    -- Utiliza lógica condicional para asignar un grupo y una tarea según el género ingresado
    case genero of
        "M" -> do
            let grupo = "Grupo A"
            let tarea = "Tarea 1"
            putStrLn $ nombre ++ ", eres del grupo: " ++ grupo ++ "."
            putStrLn $ "Tu tarea es: " ++ tarea
        "F" -> do
            let grupo = "Grupo B"
            let tarea = "Tarea 2"
            putStrLn $ nombre ++ ", eres del grupo: " ++ grupo ++ "."
            putStrLn $ "Tu tarea es: " ++ tarea
        _ -> do
            putStrLn "Error: Género no reconocido. Por favor ingrese 'M' o 'F'."
