require './lib/Direccion.rb'
require './lib/Mover.rb'
require './lib/puente.rb'
require './lib/obstaculos.rb'
require './lib/Limites.rb'

def mover_auto3(tamano, ubicacion, cad_comandos, obstaculos, puentes)
    com=cad_comandos.chars
    com.each do |elem|
        
        if(elem == 'I' || elem == 'D')
            ubicacion[2]=direccion(ubicacion[2], elem)#(N, elemnto I o D)
        end
        if (elem == 'A')
            ubicacion=avanzar(ubicacion,tamano)
            if (puentes != [])
                crusarPuentes(ubicacion,puentes)
                
            end
            
            if (obstaculos != [])
                sobreObstaculos(ubicacion, obstaculos)
            end
        end
        ubicacion=verficarLimites2(ubicacion, tamano)
    end
    return ubicacion #[2,2,S]
end

def mover_auto2(tamano, ubicacion, cad_comandos, obstaculos)
    
    com=cad_comandos.chars
    com.each do |elem|
        if(elem == 'I' || elem == 'D')
            ubicacion[2]=direccion(ubicacion[2], elem)#(N, elemnto I o D)
        end
        if (elem == 'A')
            ubicacion=avanzar(ubicacion,tamano)
            if (obstaculos != [])
                sobreObstaculos(ubicacion, obstaculos)
            end
            
        end
        ubicacion=verficarLimites2(ubicacion, tamano)
    end
    return ubicacion #[2,2,S]
end

# def mover_auto2(tamano, ubicacion, cad_comandos, obstaculos)
    
#     com=cad_comandos.chars
#     com.each do |elem|
#         if(elem == 'I' || elem == 'D')
#             ubicacion[2]=direccion(ubicacion[2], elem)#(N, elemnto I o D)
#         end
#         if (elem == 'A')
#             if (verificarLimites(ubicacion, tamano))
#                 ubicacion=avanzar(ubicacion,tamano)
#             end
#             sobreObstaculos(ubicacion, obstaculos)
            
#         end
#     end
#     return ubicacion #[2,2,S]
# end

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
        end
        
        
    end
    
    return ubicacion #[2,2,S]
end