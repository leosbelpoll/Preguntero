require 'sinatra'
require './config'


@@preguntas = {
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
        },
        "Ciencia" => {
            "p1" => {
                "text" => "Cuantos colores tiene el arcoiris?",
                "opciones" => {
                    "op1" => "2",
                    "op2" => "4",
                    "op3" => "7",
                },
                "correcta" => "op3"
            }
        },
        "Futbol" => {
            "p1" => {
                "text" => "Cúal fue el campeón del mundial de 2018?",
                "opciones" => {
                    "op1" => "Uruguay",
                    "op2" => "Alemania",
                    "op3" => "Francia",
                },
                "correcta" => "op3"
            }
        }
    }

get '/' do
    erb :index
end

get '/categoria' do
    @categorias = ["Matematica" , "Ciencia" , "Futbol"]
    erb :categoria
end

get '/pregunta' do
    @categoria= params[:categoria]
    @pregunta_mostrar = "p1"
    @pregunta = @@preguntas[@categoria][@pregunta_mostrar]
    
    erb :pregunta
end

post '/pregunta' do
    @categoria= params[:categoria]
    @respuesta= params[:respuesta]
    @pregunta= params[:pregunta]
    @resultado= "MAL"
    if(@@preguntas[@categoria][@pregunta]["correcta"] == @respuesta)
        @resultado= "OK"
    end

    erb :resultado
end