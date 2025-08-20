-- Importamos funciones necesarias para entrada/salida y validación
import System.IO (hFlush, stdout)
import Data.Char (toUpper)
import Text.Read (readMaybe)

-- | 'leerOpcionSN' solicita una opción de tipo S/N (Sí/No) y la convierte en mayúsculas
leerOpcionSN :: String -> IO (Maybe Char)
leerOpcionSN mensaje = do
    putStr mensaje
    hFlush stdout
    entrada <- getLine
    case map toUpper entrada of
        "S" -> return (Just 'S')
        "N" -> return (Just 'N')
        _   -> return Nothing

-- | Lista de ingredientes base para pizza vegana
ingredientesVeganos :: [String]
ingredientesVeganos =
    [ "1. Champiñones"
    , "2. Pimientos asados"
    , "3. Aceitunas negras"
    , "4. Cebolla caramelizada"
    , "5. Queso vegano"
    ]

-- | Lista de ingredientes para pizza normal
ingredientesNormales :: [String]
ingredientesNormales =
    [ "1. Queso"
    , "2. Pepperoni"
    , "3. Jamón"
    , "4. Champiñones"
    , "5. Pimientos"
    ]

-- | Función principal que guía la selección de pizza
main :: IO ()
main = do
    opcionPizza <- leerOpcionSN "¿Pizza vegana? (S/N): "
    case opcionPizza of
        Just 'S' -> do
            putStrLn "Ingredientes base de la pizza vegana:"
            mapM_ putStrLn ingredientesVeganos

            extra <- leerOpcionSN "¿Quieres albahaca fresca como ingrediente extra? (S/N): "
            case extra of
                Just 'S' -> do
                    putStrLn "\nLa pizza vegana que pediste tiene:"
                    mapM_ putStrLn (ingredientesVeganos ++ ["6. Albahaca fresca"])
                Just 'N' -> do
                    putStrLn "\nLa pizza vegana que pediste tiene:"
                    mapM_ putStrLn ingredientesVeganos
                Nothing  -> putStrLn "Opción inválida para ingrediente extra. Por favor responde con 'S' o 'N'."
        Just 'N' -> do
            putStrLn "La pizza normal que pediste tiene:"
            mapM_ putStrLn ingredientesNormales
        Nothing -> putStrLn "Opción inválida. Por favor responde con 'S' para pizza vegana o 'N' para pizza normal."