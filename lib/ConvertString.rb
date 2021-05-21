
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