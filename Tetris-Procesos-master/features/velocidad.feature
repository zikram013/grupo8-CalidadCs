Feature: Aumento dificultad.

As a usuario,
Quiero que la dificultad aumente a medida que mejoro en la partida.

  Scenario: aumento de velocidad
    Given El usuario juega con la velocidad 0 seleccionada en el menu.
    When La puntuacion sea superior a 100.
    Then La velocidad se ha incrementado a 10 puntos.