require './lib/Direccion.rb'
require './lib/obstaculos.rb'
require './lib/Mover.rb'
require './lib/ConvertString.rb'
require './lib/mover_auto.rb'

def Dash_Dot3(cad) #cad => 5,5 - 2,2 N - IAIAIADA - 3,4 S - DAAAIAAIAA - O 3,2 - O 1,2 - O 3,3
    cadenas=dividir_cadena2(cad)
    obstaculos=filtrarObstaculos(cadenas)
    puentes=filtrarPuentes(cadenas)
    #primer auto
    auto1=mover_auto3(tamano(cadenas[0]), ubicacion2(cadenas[1]), cadenas[2], obstaculos, puentes)
    obstaculos.push(["O",auto1[0],auto1[1]]) #agregamos la posicion final del 1er auto como obstaculo
    pos_final = ubicString(auto1)
    #segundo auto2
    auto2=mover_auto3(tamano(cadenas[0]), ubicacion2(cadenas[3]), cadenas[4], obstaculos, puentes)
    pos_final2 = ubicString(auto2)
    resp=unirString(cadenas, pos_final, pos_final2)
    return resp
end

def Dash_Dot2(cad) #cad => 5,5 - 2,2 N - IAIAIADA - 3,4 S - DAAAIAAIAA - O 3,2 - O 1,2 - O 3,3
    cadenas=dividir_cadena2(cad)
    obstaculos=filtrarObstaculos(cadenas)
    #obstaculos=convertObstaculos(cadenas[5..7])
    # cadenas.delete_at(7)
    # cadenas.delete_at(6)
    # cadenas.delete_at(5)

    #primer auto
    auto1=mover_auto2(tamano(cadenas[0]), ubicacion2(cadenas[1]), cadenas[2], obstaculos)
    obstaculos.push(["O",auto1[0],auto1[1]]) #agregamos la posicion final del 1er auto como obstaculo
    pos_final = ubicString(auto1)
    # pos[0]=pos[0].to_s
    # pos[1]=pos[1].to_s
    # pos_final=pos[0]+','+pos[1]+' '+pos[2]
    
    #segundo auto2
    auto2=mover_auto2(tamano(cadenas[0]), ubicacion2(cadenas[3]), cadenas[4], obstaculos)
    pos_final2 = ubicString(auto2)
    # auto2[0]=auto2[0].to_s
    # auto2[1]=auto2[1].to_s
    # pos_final2=auto2[0]+','+auto2[1]+' '+auto2[2]
    
    #cadenas.insert(3,pos_final)
    #cadenas.push(pos_final2) #añade posfinal a cadenas
    resp=unirString(cadenas, pos_final, pos_final2)
    return resp
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