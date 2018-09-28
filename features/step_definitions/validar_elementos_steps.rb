Dado("que eu estou na página principal da Automação Com Batista") do
  @home = HomePage.new
  @home.load
  @home.estou_pagina_inicial?
end

@smoke
Quando("acesso a página de links") do
  @nav = NavMenu.new
  @nav.botao_buscar_elementos.click
  @nav.link_links.click
end

Quando("clico no link {string}") do |element|
  @link_page = LinksPage.new
  @link_page.click_link(element)
end

Então("devo ver a seguinte mensagem {string}") do |mensagem|
  expect(page).to have_content(mensagem)
end