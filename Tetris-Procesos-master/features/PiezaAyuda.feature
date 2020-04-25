Feature: Pieza de ayuda

As a usuario
Quiero poder utilizar una pieza de ayuda
Para eliminar filas

Scenario: Aparición de la pieza de ayuda
	Given Partida en juego con 100 puntos y 10 lineas
    When Pulso el boton ayuda
    Then Se eliminaran lineas y quedaran 7
    And La puntuacion sera penalizada a 70 puntos
