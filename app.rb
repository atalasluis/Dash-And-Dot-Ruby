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
    erb :inicio2
end