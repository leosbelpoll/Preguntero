require 'sinatra'
require './config'

get '/' do
    @app= "Hello world"
    erb :index
end