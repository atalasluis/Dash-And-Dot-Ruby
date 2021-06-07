require 'sinatra'
require './config'
require './lib/Dash&Dot.rb'
require './lib/ConvertString.rb'

get '/' do
    erb :bienvenida
end

post '/inicio' do
    
    datos=params[:datos_ingresados]
    if datos!=nil
        cad=Dash_Dot(datos)
        @posicion_inicial=cad[0]
        @comandos=cad[1]
        @posicion_final=cad[2]
    else
        @posicion_inicial=params[:datos_ingresados]
        @comandos=params[:datos_ingresados]
        @posicion_final=params[:datos_ingresados]
    end
    erb :inicio
end


post '/inicio2' do
    
    datos=params[:datos_ingresados]
    if datos!=nil
        cad=Dash_Dot3(datos)
        @superficie=cad[0]
        @pos_ini=cad[1]
        @comds=cad[2]
        @pos_fin=cad[3]
        @pos_ini2=cad[4]
        @comds2=cad[5]
        @pos_fin2=cad[6]
    end
    erb :inicio2
end