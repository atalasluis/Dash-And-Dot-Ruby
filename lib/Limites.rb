
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

def verificarCordenada2(cordenada, limite)
    if (cordenada < 0)
        cordenada = 0
    end
    if (cordenada >= limite)
        cordenada = limite - 1
    end
    return cordenada
end

# ubicacion [2,2,"N"]  tamano [5,5]
def verficarLimites2(ubicacion, tamano)
    ubicacion[0]=verificarCordenada2(ubicacion[0], tamano[0])
    ubicacion[1]=verificarCordenada2(ubicacion[1], tamano[1])
    return ubicacion
end