Given("El usuario ha finalizado una partida") do
  
end

When("Accede a la pantalla de {string}") do |pantalla|
  @pantalla = pantalla
end

When("Pulsa el boton {string} para volver") do |boton|
  if boton == "true" then
	@pantalla = "menu"
  end
end

Then("El usuario volverá a la pantalla del {string}") do |menu|
  @pantalla == menu
end
