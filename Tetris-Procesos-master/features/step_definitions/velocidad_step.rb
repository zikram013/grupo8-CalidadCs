Given("El usuario juega con la velocidad {int} seleccionada en el menu.") do |entrada|
  @velocidad = entrada
end

When("La puntuacion sea superior a {int}.") do |puntuacion|
  if puntuacion > 100 then
	@velocidad= @velocidad + 10
  end
end

Then("La velocidad se ha incrementado a {int} puntos.") do |nueva_velocidad|
  @velocidad == nueva_velocidad
end