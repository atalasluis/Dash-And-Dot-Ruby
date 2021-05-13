
def Dash_Dot(cad) #cad => 5,5 - 2,2N - IAIAIADA
    cadenas=cad.split('-')
    pos=mover_auto(cadenas[0], cadenas[1], cadenas[2])
    pos[0]=pos[0].to_s
    pos[1]=pos[1].to_s
    pos_final=pos[0]+','+pos[1]+','+pos[2]
    return cadenas[1]+"-"+cadenas[2]+"-"+pos_final
end

def div(cadena)
    cad=cadena.split('-')
    return cad
end

def mover_auto(cad_tamano, cad_ubicacion, cad_comandos)
    tamano=tam(cad_tamano) #"5,5"
    ubicacion=ubic(cad_ubicacion)#"2,2,N" 
    com=cad_comandos.chars
    com.each do |elem|
        if(elem != 'A')
            ubicacion[2]=direccion(ubicacion[2], elem)#(N, elemnto I o D)
        end
        if (elem == 'A')
            if (ubicacion[0]<tamano[0] && ubicacion[1]<tamano[1])
                avanzar(ubicacion)
            end
        end
    end

    return ubicacion #[2,2,S]
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

#funciones para mover
def avanzar(ubicacion)#[y =>2, x =>2, N] 
    if (ubicacion[2] == 'O')
        # x=x-1
        ubicacion[1]=ubicacion[1]-1
    end
    if (ubicacion[2] == 'E')
        # x=x+1
        ubicacion[1]=ubicacion[1]+1
    end
    if (ubicacion[2] == 'N')
        # y=y-1
        ubicacion[0]=ubicacion[0]-1
    end
    if (ubicacion[2] == 'S')
        # y=y+1
        ubicacion[0]=ubicacion[0]+1
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