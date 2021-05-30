require './lib/Direccion.rb'
require './lib/Mover.rb'
require './lib/ConvertString.rb'
require './lib/obstaculos.rb'
require './lib/mover_auto.rb'

def Dash_Dot2(cad) #cad => 5,5 - 2,2 N - IAIAIADA - 3,4 S - DAAAIAAIAA - O 3,2 - O 1,2 - O 3,3
    #cadenas=dividir_cadena(cad)
    cadenas=dividir_cadena2(cad)
    
    obstaculos=convertObstaculos(cadenas[5..7]) #pendiente
    cadenas.delete_at(7)
    cadenas.delete_at(6)
    cadenas.delete_at(5)
    #primer auto
    pos=mover_auto2(tamano(cadenas[0]), ubicacion2(cadenas[1]), cadenas[2], obstaculos)
    
    obstaculos.push(["O",pos[0],pos[1]]) #agregamos la posicion final del 1er auto como obstaculo
    
    pos[0]=pos[0].to_s
    pos[1]=pos[1].to_s

    pos_final=pos[0]+','+pos[1]+' '+pos[2]
    
    
    
    #segundo auto2
    auto2=mover_auto2(tamano(cadenas[0]), ubicacion2(cadenas[3]), cadenas[4], obstaculos)
    auto2[0]=auto2[0].to_s
    auto2[1]=auto2[1].to_s
    #puts pos2
    pos_final2=auto2[0]+','+auto2[1]+' '+auto2[2]
    
    cadenas.insert(3,pos_final)
    cadenas.push(pos_final2) #añade posfinal a cadenas
    
    return cadenas
end



def Dash_Dot(cad) #cad => 5,5 - 2,2,N - IAIAIADA
    cadenas=dividir_cadena2(cad)
    pos=mover_auto(tamano(cadenas[0]), ubicacion2(cadenas[1]), cadenas[2])
    pos[0]=pos[0].to_s
    pos[1]=pos[1].to_s
    pos_final=pos[0]+','+pos[1]+' '+pos[2]
    cadenas.push(pos_final)
    cadenas.delete_at(0)
    return cadenas
end