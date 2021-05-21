require './lib/Dash&Dot.rb'
require './lib/Direccion.rb'
require './lib/Mover.rb'
require './lib/ConvertString.rb'

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
