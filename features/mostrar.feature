Feature:

    COMO: jugador
    QUIERO: poder ver donde se encuentra el auto en la pista 
        después de ingresar los comandos (posicion inicial, 
        movimientos a ejecutar) 
    PARA: poder ver en que posición se encuentra dentro de la 
        pista (posición final)


Scenario:
    Given visito la pagina de Comandos e ingreso los datos "5,5-2,2 N-IAIAIADA"
    When hago click en el botton "ejecutar"
    Then muestrar la posicion inicial del auto "Posicion Inicial: 2,2 N"
    And deberia mostrar los comandos ingresados "Comandos: IAIAIADA"
    And deberia mostrar la posicion final del auto "Posicion Final: 4,2 S"
