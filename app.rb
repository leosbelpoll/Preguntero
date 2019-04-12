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
    @preguntas = {
        "Matematica" => {
            "p1" => {
                "text" => "Cuanto es 2+2?",
                "opciones" => {
                    "op1" => "2",
                    "op2" => "4",
                    "op3" => "7",
                },
                "correcta" => "op2"
            },
            "p2" => {
                "text" => "Cuanto es 3*5?",
                "opciones" => {
                    "op1" => "2",
                    "op2" => "4",
                    "op3" => "15",
                },
                "correcta" => "op3"
            },
            "p3" => {
                "text" => "Cuanto es 10-8?",
                "opciones" => {
                    "op1" => "2",
                    "op2" => "4",
                    "op3" => "1",
                },
                "correcta" => "op3"
            }
        }
    }
    erb :pregunta
end

post '/pregunta' do
    @resultado= params[:resultado]
    erb :resultado
end