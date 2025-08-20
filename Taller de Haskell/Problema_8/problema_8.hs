-- Importamos funciones necesarias para entrada/salida y validación
import System.IO (hFlush, stdout)
import Text.Read (readMaybe)

-- | Precio base del boleto (constante global)
boletoBase :: Float
boletoBase = 10000.0

-- | 'calcularPrecioBoleto' toma la edad y retorna el precio final del boleto.
calcularPrecioBoleto :: Int -> Float
calcularPrecioBoleto edad
    | edad <= 2   = 0.0                          -- Niños menores de 3 años no pagan
    | edad <= 12  = boletoBase * (1 - 0.45)      -- 45% de descuento
    | edad <= 59  = boletoBase                   -- Precio completo
    | otherwise   = boletoBase * (1 - 0.35)      -- 35% de descuento para mayores de 60

-- | 'leerInt' solicita un número entero desde la entrada estándar con validación
leerInt :: String -> IO Int
leerInt mensaje = do
    putStr mensaje
    hFlush stdout
    entrada <- getLine
    case readMaybe entrada of
        Just n  -> return n
        Nothing -> do
            putStrLn "Entrada inválida. Intente de nuevo."
            leerInt mensaje

-- | Función principal que solicita la edad e imprime el precio del boleto
main :: IO ()
main = do
    edad <- leerInt "Digite su edad: "
    let precio = calcularPrecioBoleto edad
    putStrLn $ "El valor del boleto es de: $" ++ show precio
