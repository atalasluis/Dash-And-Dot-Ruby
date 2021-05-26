Feature:

    COMO: jugador
    QUIERO: poder ver donde se encuentra el auto en la pista 
        después de ingresar los comandos (posicion inicial, 
        movimientos a ejecutar) 
    PARA: poder ver en que posición se encuentra dentro de la 
        pista (posición final)


Scenario:
    Given visito la pagina de principal
    When ingreso los datos del auto "5,5-2,2 N-IAIAIADA"
    And presiono el botton  "ejecutar"
    Then deberia mostrar la posicion inicial del auto "Posicion Inicial: 2,2 N"
    And deberia mostrar los comandos ingresados "Comandos: IAIAIADA"
    And deberia mostrar la posicion final del auto "Posicion Final: 4,2 S"
