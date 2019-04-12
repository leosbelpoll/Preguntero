require 'sinatra'
require './config'

get '/' do
    erb :index
end

get '/categoria' do
    erb :categoria
end

get '/pregunta' do
    @pregunta= "Cuanto es 2+2?"
    erb :pregunta
end

post '/pregunta' do
    @resultado= "OK"
    erb :resultado
end