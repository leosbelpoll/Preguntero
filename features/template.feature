Feature: Preguntero

Scenario: Titulo de inicio
    Given Inicio de la aplicacion
    Then Que el titulo sea "Bienvenido al Preguntero"

Scenario: Boton de inicio
    Given Inicio de la aplicacion
    Then Que contenga el boton "iniciar" y texto "Iniciar partida"

Scenario: Navego a categoria
    Given Inicio de la aplicacion
    When Presiono boton "iniciar"
    Then Que el titulo sea "Categorias"

Scenario: Mostrar pregunta
    Given Pagina de pregunta
    Then Que contenga la pregunta "Cuanto es 2+2?"

Scenario: Mostrar opciones
    Given Pagina de pregunta
    Then Que contenga la opcion "4"

# Scenario: Validar respuesta
#     Given Pagina de pregunta
#     And Envio de pregunta "Cuanto es 2+2?" y opcion "4"
#     Then La pagina resultado contiene "OK"
