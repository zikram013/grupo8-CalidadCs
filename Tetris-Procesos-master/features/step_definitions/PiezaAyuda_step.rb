Given("Partida en juego con {int} puntos y {int} lineas") do |puntuacion, lineas|
  @puntuacion = puntuacion
  @lineas =  lineas
end

When("Pulso el boton ayuda") do
  @puntuacion = @puntuacion - 30
  @lineas = @lineas - 3
end

Then("Se eliminaran lineas y quedaran {int}") do |lineas_esperadas|
  @lineas == lineas_esperadas
end

Then("La puntuacion sera penalizada a {int} puntos") do |puntuacion_esperada|
  @puntuacion == puntuacion_esperada
end
