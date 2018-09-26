Dado("que eu estou na página principal da Automação Com Batista") do
  @home = HomePage.new
  @home.load
  @home.estou_pagina_inicial?
end

Quando("acesso a página de links") do
  @nav = NavMenu.new
  @nav.botao_buscar_elemento.click
end

Quando("clico no link {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Então("devo ver a seguinte mensagem {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end