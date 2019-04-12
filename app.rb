require 'sinatra'
require './config'

get '/' do
    erb :index
end

get '/categoria' do
    @categorias = ["Matematica" , "Ciencia" , "Futbol"]
    erb :categoria
end

get '/pregunta' do
    @categoria= params[:categoria]
    @categorias = ["Matematica"]
    @preguntas={"Matematica" => [
        ["Cuanto es 2+2?", "3", "4", "6", "4"],
        ["Cuanto es 3*2", "3", "4", "6", "6"]
        ]   
    }
    erb :pregunta
end

post '/pregunta' do
    @resultado= params[:resultado]
    erb :resultado
end