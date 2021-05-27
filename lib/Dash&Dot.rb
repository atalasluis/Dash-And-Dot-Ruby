require './lib/Dash&Dot.rb'
require './lib/Direccion.rb'
require './lib/Mover.rb'
require './lib/ConvertString.rb'
require './lib/obstaculos.rb'

def Dash_Dot(cad) #cad => 5,5 - 2,2,N - IAIAIADA
    #cadenas=dividir_cadena(cad)
    cadenas=dividir_cadena2(cad)
    #                     [5,5]                  [2,2,"N"]    [IAIAIADA]
    #pos=mover_auto(tamano(cadenas[0]), ubicacion(cadenas[1]), cadenas[2])
    pos=mover_auto(tamano(cadenas[0]), ubicacion2(cadenas[1]), cadenas[2])
    pos[0]=pos[0].to_s
    pos[1]=pos[1].to_s
    pos_final=pos[0]+','+pos[1]+' '+pos[2]
    cadenas.push(pos_final)
    cadenas.delete_at(0)
    return cadenas
end

def mover_auto(tamano, ubicacion, cad_comandos)
    com=cad_comandos.chars
    com.each do |elem|
        if(elem != 'A')
            ubicacion[2]=direccion(ubicacion[2], elem)#(N, elemnto I o D)
        end
        if (elem == 'A')
            if (verificarLimites(ubicacion, tamano))
                ubicacion=avanzar(ubicacion,tamano)
            end
            #obstaculo
        end
        
        
    end
    
    return ubicacion #[2,2,S]
end
