
def mover_auto2(tamano, ubicacion, cad_comandos, obstaculos)
    com=cad_comandos.chars
    com.each do |elem|
        if(elem != 'A')
            ubicacion[2]=direccion(ubicacion[2], elem)#(N, elemnto I o D)
        end
        if (elem == 'A')
            if (verificarLimites(ubicacion, tamano))
                ubicacion=avanzar(ubicacion,tamano)
                
            end
            
            sobreObstaculos(ubicacion, obstaculos)
        end
        
        
    end
    return ubicacion #[2,2,S]
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
        end
        
        
    end
    
    return ubicacion #[2,2,S]
end