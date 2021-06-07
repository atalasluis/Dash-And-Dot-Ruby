Feature:

COMO: jugador
QUIERO: ingresar puentes en el juego por medio de un comando
PARA: tener una experiencia más interesante en el juego


Scenario:
    Given visito la inicio2 luego ingreso los datos y los puentes "5,5-2,0 N-AAA-0,3 E-AAA-P 0,0 3,3-P 0,4 4,0"
    When comienzo el juego "ejecutar"
    Then muestra el tamaño "Superficie de Terreno: 5,5"
    And muestra el auto 1 "Auto 1:"
    And inicio 1 "2,0 N"
    And comandos 1 "AAA"
    And final 1 "2,3 N"
    And muestra el auto 2 "Auto 2:"
    And inicio 2 "0,3 E"
    And comandos 2 "AAA"
    And final 2 "4,2 E"