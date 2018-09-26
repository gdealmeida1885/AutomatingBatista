class HomePage < SitePrism::Page
  set_url '/treinamento/home'

  element :titulo_pagina, "div.tamanhodivupl > h5"
  element :formulario, "ul.collapsible.collapsible-accordion > li:first-child"
  element :botao_formulario, "ul.collapsible.collapsible-accordion > li:first-child"
  element :link_criar_usuario, "a[href*='users/new']"

  def estou_pagina_inicial?
    has_titulo_pagina?
  end

  def acessar_cadastro_usuario
    botao_formulario.click
    link_criar_usuario.click
  end
end
