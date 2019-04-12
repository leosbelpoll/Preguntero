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
