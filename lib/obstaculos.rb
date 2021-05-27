#tamño [5,5] ubicacion [2,2,"N"] comandos "IAIAIADA"
#obstaculos [[O,1,2],[O,3,3], [O,2,5]]
def sobreObstaculos(ubicacion, obstaculos)
    obstaculos.each do |elemento|
        if (comparar(elemento, ubicacion))
            ubicacion=retroceder(ubicacion)
        end
    end
end

def comparar(obstaculo, ubicacion)
    if (obstaculo[1]==ubicacion[0] && obstaculo[2]==ubicacion[1])
        return true
    end
    return false
end

def retroceder(ubicacion)
    if (ubicacion[2]=="N" || ubicacion[2]=="S")
        ubicacion[0]=retro_norte_sur(ubicacion[0], ubicacion[2])
    elsif (ubicacion[2]=="O" || ubicacion[2]=="E")
        ubicacion[1]=retro_oeste_este(ubicacion[1], ubicacion[2])
    end
    return ubicacion
end

def retro_norte_sur(y, direccion)
   if (direccion=='N')
       y = y + 1
       return y
   elsif (direccion=='S')
       y = y - 1
       return y
   end 
end

def retro_oeste_este(x, direccion)
    if (direccion=='O')
        x = x + 1
        return x
    elsif (direccion=='E')
        x = x - 1
        return x
    end
 end