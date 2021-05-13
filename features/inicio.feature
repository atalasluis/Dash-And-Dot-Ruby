Feature:
    COMO: jugador
    QUIERO: ingresar un comando con un botón ejecutar para el movimiento del auto
    PARA: guiar el auto en la pista

Scenario:
    Given visito la pagina de comandos
    When ingreso los datos "5,5-2,2,N-IAIAIADA"
    And presiono el boton "ejecutar"
    Then deberia mostrar la posicion inicial del auto "Posicion Inicial: 2,2,N"


Scenario:
    Given visito la pagina de comandos
    When ingreso los datos "5,5-2,2,N-IAIAIADA"
    And presiono el boton "ejecutar"
    Then deberia mostrar la posicion inicial del auto "Posicion Inicial: 2,2,N"
    Then deberia mostrar los comandos ingresados "Comandos: IAIAIADA"


Scenario:
    Given visito la pagina de comandos
    When ingreso los datos "5,5-2,2,N-IAIAIADA"
    And presiono el boton "ejecutar"
    Then deberia mostrar la posicion inicial del auto "Posicion Inicial: 2,2,N"
    Then deberia mostrar los comandos ingresados "Comandos: IAIAIADA"
    Then deberia mostrar la posicion final del auto "Posicion Final: 4,2,S"