
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