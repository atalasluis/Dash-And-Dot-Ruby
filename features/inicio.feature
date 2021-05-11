Feature:
    COMO: jugador
    QUIERO: ingresar un comando con un botón ejecutar para el movimiento del auto
    PARA: guiar el auto en la pista

Scenario:
    Given visito la pagina de comandos
    When ingreso el posicion inicial del auto "2,2"
    And presiono el boton "ejecutar"
    Then deberia mostrar la posicion inicial del auto "Posicion Inicial: 2,2"
    And deberia mostrar los comandos ingresados "Comandos: 2,2"
    And deberia mostrar la posicion final del auto "Posicion Final: 2,2"
 