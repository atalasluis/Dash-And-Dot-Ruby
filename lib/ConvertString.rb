
def ubicacion(cad)#2,2,N
    aux=cad.split(',')
    aux[0]=aux[0].to_i
    aux[1]=aux[1].to_i
    return aux #[2,2,"S"]
end

def tamano(tamano)
    aux=tamano.split(',')
    aux[0]=aux[0].to_i
    aux[1]=aux[1].to_i
    return aux #[5,5]
end

def dividir_cadena(cadena)
    cad=cadena.split('-')
    return cad
end
#corrigiendo al formato del mg
def ubicacion2(cadena)
    cad=cadena.split(/\s|,/)
    cad[0]=cad[0].to_i
    cad[1]=cad[1].to_i
    return cad #[2,2,"S"]
end

def dividir_cadena2(cadena)
    cad=cadena.split(/\n|-/)
    return cad
end

def cambiarSigLinea(cadena)
    cadena.gsub('\n', "\n")
    return cadena
end
#obstaculos

#cad => 5,5 - 2,2 N - IAIAIADA - 3,4 S - DAAAIAAIAA - O 3,2 - O 1,2 - O 3,3
def filtrarObstaculos(cad)
    aux=[]
    cad.each do |elemento|
        if (elemento[0] == "O")
            aux.push(stringObstaculos(elemento))
        end
    end
    return aux #[["O",3,2],......]
end

def convertObstaculos(obstaculos) # ["O 3,2", ....]
    aux=[]
    obstaculos.each do |elemento|
        aux.push(stringObstaculos(elemento))
        #elemento=stringObstaculos(elemento)
    end
    #puts aux
    return aux #[["O",3,2],......]
end

def stringObstaculos(obstaculo)# "O 3,2"
    aux=obstaculo.split(/\s|,/)
    aux[1]=aux[1].to_i
    aux[2]=aux[2].to_i
    return aux # ["O",3,2]
end
#Puente
#cad => 5,5 - 2,2 N - IAIAIADA - 3,4 S - DAAAIAAIAA - O 3,2 - O 1,2 - O 3,3
def filtrarPuentes(cad)
    aux=[]
    cad.each do |elemento|
        if (elemento[0] == "P")
            aux.push(convertPuente(elemento))
        end
    end
    return aux # [P,[3,1],[3,5]]
end

def convertPuente(puente)# "P 3,1 3,5"
    aux=puente.split(/\s/) # ["P","3,1","3,5"]
    aux[1]=stringPuente(aux[1]) # "3,1"
    aux[2]=stringPuente(aux[2]) # "3,5"
    return aux # [P,[3,1],[3,5]]
end

def stringPuente(puente)# 3,1
    aux=puente.split(/,/) #["3","1"]
    aux[0]=aux[0].to_i
    aux[1]=aux[1].to_i
    return aux # [3,1]
end

# ubicacion a string

def ubicString(ubicFinal)
    ubicFinal[0]=ubicFinal[0].to_s
    ubicFinal[1]=ubicFinal[1].to_s
    resp=ubicFinal[0]+','+ubicFinal[1]+' '+ubicFinal[2]
    return resp
end

#respuesta en estring
def unirString(cad, auto1, auto2)
    resp=[]
    resp.push(cad[0])
    resp.push(cad[1])
    resp.push(cad[2])
    resp.push(auto1)
    resp.push(cad[3])
    resp.push(cad[4])
    resp.push(auto2)
    return resp
end
