require 'sinatra'
require './config'
require './lib/Dash&Dot.rb'

get '/' do
    erb :bienvenida
end

post '/inicio' do
    #resp [[],[],[]]
    #@posicion_inicial=params[:resp[0]]
    #arreglo_resultado= Dash_Dot()
    datos=params[:datos_ingresados]
    if datos!=nil
        cad=div(datos)
        @posicion_inicial=cad[1]
        @comandos=cad[2]
        @posicion_final=cad[0]
    else
        @posicion_inicial=params[:datos_ingresados]
        @comandos=params[:datos_ingresados]
        @posicion_final=params[:datos_ingresados]
    end
    erb :inicio
end
