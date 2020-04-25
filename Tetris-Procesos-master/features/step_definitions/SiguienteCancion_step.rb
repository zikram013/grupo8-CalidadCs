Given("Una partida en curso con la pista numero {int}") do |entrada|
  @entrada = entrada
end

When("Pulso el {string} de siguiente pista") do |boton|
  if boton == "true" then
	@entrada = entrada + 1
  end
end

Then("Se reproducira la pista numero {int}") do |salida|
  @entrada == salida
end