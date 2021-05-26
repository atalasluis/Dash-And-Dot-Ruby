Feature:
    COMO: jugador
    QUIERO: poder ingresar una secuencia de comandos(tamaño 
        de la pista, posición inicial, movimientos a ejecutar) 
    PARA: mover el auto en la pista

Scenario:
    Given visito la pagina de inicio
    When ingreso los datos "5,5-2,2 N-IAIAIADA"
    And presiono el boton "ejecutar"
    Then deberia mostrar la posicion inicial del auto "Posicion Inicial: 2,2 N"