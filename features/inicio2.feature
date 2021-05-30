Feature:
    COMO: jugador
    QUIERO: ingresar comandos y ejecutar los movimientos de los dos autos
    PARA: mover los dos autos en la pista y evitar obstáculos

Scenario:
    Given ingreso a la pagina de inicio2
    When ingreso datos de los 2 autos "5,5-2,2 N-IAIAIADA-2,3 N-IAA-O 3,2-O 1,2-O 3,3"
    And le doy click al button "ejecutar"
    Then debe mostrar la Superficie del Terreno "Superficie de Terreno: 5,5"