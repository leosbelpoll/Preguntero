require 'sinatra'
require './config'

get '/' do
    erb :index
end

get '/pregunta' do
    @pregunta= "Cuanto es 2+2?"
    erb :pregunta
end