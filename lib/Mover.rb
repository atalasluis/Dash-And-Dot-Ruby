require './lib/Limites.rb'

def avanzar(ubicacion, tamano)
    
    if (ubicacion[2] == 'N' || ubicacion[2] == 'S')
        ubicacion[0]=avansar_norte_sur(ubicacion[0], ubicacion[2])
    end
    if (ubicacion[2] == 'O' || ubicacion[2] == 'E')
        ubicacion[1]=avanzar_oeste_este(ubicacion[1], ubicacion[2])
    end
    return ubicacion
end

def avanzar_oeste_este(x, di)#[y =>2, x =>2, N] 
    if (di == 'O')
        x = x - 1
        return x
    end
    if (di == 'E')
        x = x + 1
        return x
    end
end

def avansar_norte_sur(y, di)
    if (di == 'N')
        y = y - 1
        return y
    end
    if (di == 'S')
        y = y + 1
        return y
    end
end