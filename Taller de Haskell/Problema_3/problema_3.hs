-- Importamos System.IO para entrada/salida en consola
import System.IO

-- Importamos toLower desde Data.Char por si se necesita manipulación de texto (no esencial aquí)
import Data.Char (toLower)

-- Definimos una función que toma dos números y devuelve el resultado de la división
-- Si el divisor es cero, devuelve un mensaje de error usando Either
dividir :: Double -> Double -> Either String Double
dividir _ 0 = Left "Error: No se puede dividir por cero."
dividir x y = Right (x / y)

-- Función principal del programa
main :: IO ()
main = do
    -- Solicitamos el primer número (numerador)
    putStrLn "Ingrese el numerador:"
    numStr <- getLine
    let num = read numStr :: Double

    -- Solicitamos el segundo número (denominador)
    putStrLn "Ingrese el denominador:"
    denomStr <- getLine
    let denom = read denomStr :: Double

    -- Ejecutamos la función dividir y mostramos el resultado
    case dividir num denom of
        Right resultado -> putStrLn $ "Resultado: " ++ show resultado
        Left mensaje    -> putStrLn mensaje
