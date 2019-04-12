Feature: Preguntero

Scenario: Titulo de inicio
    Given Inicio de la aplicacion
    Then Que el titulo sea "Bienvenido al Preguntero"

Scenario: Boton de inicio
    Given Inicio de la aplicacion
    Then Que contenga el boton "Iniciar partida"

Scenario: Mostrar pregunta
    Given Pagina de pregunta
    Then Que contenga la pregunta "Cuanto es 2+2?"