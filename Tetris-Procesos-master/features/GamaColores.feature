Feature: Elección de gama de colores

As a usuario
Quiero elegir la gama de colores de las piezas del juego
Para poder personalizar la partida

Scenario: Elección de colores en el menú
	Given El usuario ha accedido al menú del juego
    When Elige la gama de colores con el modo "ColoresPersonalizados" en el menú
    And Comienza la partida "play"
    Then El juego se inicia en el modo "ColoresPersonalizados"