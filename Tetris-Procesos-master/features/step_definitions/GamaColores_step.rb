Given("El usuario ha accedido al menú del juego") do
  #Se deberia comprobar que la ventana actual es la de mainActivity
end

When("Elige la gama de colores con el modo {string} en el menú") do |modo|
  #Se pasa como string el modo seleccionado
  @modo = modo
end

When("Comienza la partida {string}") do |inicio|
  #Se indica que la partida ha comenzado con un booleano
  @Partida_iniciada = inicio
end

Then("El juego se inicia en el modo {string}") do |modoColoresPersonalizados|
  if @partida_iniciada == "true" then
	@modo == modoColoresPersonalizados
  end
  #si no se inicia la partida no importa el modo
end