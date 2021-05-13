
def Dash_Dot(cad) #cad => 5,5 - 2,2,N - IAIAIADA
    cadenas=div(cad)

    pos=mover_auto(tam(cadenas[0]), ubic(cadenas[1]), cadenas[2])
    pos[0]=pos[0].to_s
    pos[1]=pos[1].to_s
    pos_final=pos[0]+','+pos[1]+','+pos[2]
    cadenas.push(pos_final)
    cadenas.delete_at(0)
    return cadenas
end

#ya testeadas
def mover_auto(tamano, ubicacion, cad_comandos)
    com=cad_comandos.chars
    com.each do |elem|
        if(elem != 'A')
            ubicacion[2]=direccion(ubicacion[2], elem)#(N, elemnto I o D)
        end
        if (elem == 'A')
            ubicacion=avanzar(ubicacion,tamano)
        end
    end
    
    return ubicacion #[2,2,S]
end
def avanzar(ubicacion, tamano)
    
    if (ubicacion[2] == 'N' || ubicacion[2] == 'S')
        if(0 <= ubicacion[0] && ubicacion[0] < tamano[0])# no limita
            ubicacion[0]=avansar_norte_sur(ubicacion[0], ubicacion[2])
        end
    end
    if (ubicacion[2] == 'O' || ubicacion[2] == 'E')
        if (0 <= ubicacion[1] && ubicacion[1] < tamano[1])# no limita
            ubicacion[1]=avanzar_oeste_este(ubicacion[1], ubicacion[2])
        end
    end
    return ubicacion
end

def ubic(cad)#2,2,N
    aux=cad.split(',')
    aux[0]=aux[0].to_i
    aux[1]=aux[1].to_i
    return aux #[2,2,"S"]
end

def tam(tamano)
    aux=tamano.split(',')
    aux[0]=aux[0].to_i
    aux[1]=aux[1].to_i
    return aux #[5,5]
end

def div(cadena)
    cad=cadena.split('-')
    return cad
end
#funciones para mover
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

def direccion(direccion, comando)#(N, I o D) 
    if (direccion == 'N')
        if (comando == 'I')
            return 'O'
        end
        if (comando == 'D')
            return 'E'
        end
    end
    if (direccion == 'S')
        if (comando == 'I')
            return 'E'
        end
        if (comando == 'D')
            return 'O'
        end
    end
    if (direccion == 'O')
        if (comando == 'I')
            return 'S'
        end
        if (comando == 'D')
            return 'N'
        end
    end
    if (direccion == 'E')
        if (comando == 'I')
            return 'N'
        end
        if (comando == 'D')
            return 'S'
        end
    end
end