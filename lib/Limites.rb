
def verificarLimites(ubicacion, tamano)
    if (verificarCordenada(ubicacion[0], tamano[0]))
        if (verificarCordenada(ubicacion[1], tamano[1]))
            return true
        end
    end
    return false
end
def verificarCordenada(cordenada, limite)
    if ((0 < cordenada) && (cordenada < limite - 1))
        return true
    end
    return false
end