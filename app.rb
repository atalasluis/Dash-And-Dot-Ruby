require 'sinatra'
require './config'

get '/' do
    erb :bienvenida
end

post '/inicio' do
    @posicion_inicial=params[:comandos_ingresados]
    @comandos=params[:comandos_ingresados]
    @posicion_final=params[:comandos_ingresados]
    erb :inicio
end
