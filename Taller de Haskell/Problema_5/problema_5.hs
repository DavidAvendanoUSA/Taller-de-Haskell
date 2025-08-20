-- Definimos la funcion 'obligacionFiscal'
-- Toma dos parámetros:
-- edad: un número entero (Int)
-- ingresos: un número decimal (Double)
-- Devuelve True si la persona tiene 18 años o más y gana mas de $5.500.000 COP
-- De lo contrario, devuelve False
obligacionFiscal :: Int -> Double -> Bool
obligacionFiscal edad ingresos = edad >= 18 && ingresos > 5500000
-- Función principal del programa
-- Solicita al usuario su edad e ingresos, y muestra si debe pagar impuestos
main :: IO ()
main = do
-- Solicita la edad del usuario
    putStrLn "Ingrese su edad:"
    edadStr <- getLine
    let edad = read edadStr :: Int
-- Solicita los ingresos mensuales del usuario
    putStrLn "Ingrese sus ingresos mensuales en COP:"
    ingresosStr <- getLine
    let ingresos = read ingresosStr :: Double
-- Evalúa si el usuario debe pagar impuestos usando la función obligacionFiscal
    print (obligacionFiscal edad ingresos)
