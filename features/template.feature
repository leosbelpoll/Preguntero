Feature: Preguntero

Scenario: Titulo de inicio
    Given Inicio de la aplicacion
    Then Que el titulo sea "Bienvenido al Preguntero"

Scenario: Boton de inicio
    Given Inicio de la aplicacion
    Then Que contenga el boton "Iniciar partida"

Scenario: Navego a categoria
    Given Inicio de la aplicacion
    When Presiono boton "iniciar"
    Then Que el titulo sea "Categorias"

Scenario: Mostrar categorias
    Given Inicio de la aplicacion
    When Presiono boton "iniciar"
    Then Se ve categoria "Matematica"

Scenario: Navego a pregunta
    Given Pagina de categoria
    When Presiono boton "matematica"
    Then Que el titulo sea "Pregunta"

Scenario: Mostrar pregunta
    Given Pagina de pregunta
    Then Que contenga delante de la pregunta "Pregunta:"

Scenario: Mostrar opciones
    Given Pagina de pregunta
    Then Que contenga delante de las opciones "Opciones:"

# Scenario: Validar respuesta
#     Given Pagina de pregunta
#     And Envio de pregunta "Cuanto es 2+2?" y opcion "4"
#     Then La pagina resultado contiene "OK"
