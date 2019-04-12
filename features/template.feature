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
    Then Que el titulo sea "Preguntero - categorias"
