Feature: Volver a menú principal

As a usuario
Quiero tener la opción de volver al menú principal al acabar una partida
Para poder seleccionar modo de juego y jugar otra partida

  Scenario: Volver al inicio
    Given El usuario ha finalizado una partida
    When Accede a la pantalla de "ranking"
    And Pulsa el boton "volver al menu" para volver
    Then El usuario volverá a la pantalla del "menu"