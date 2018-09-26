class NavMenu < SitePrism::Page
  element :botao_formulario, "ul.collapsible.collapsible-accordion > li:first-child"
  element :link_criar_usuario, "a[href*='users/new']"
  element :link_listar_usuarios, "a[href*='users']"
  
  element :botao_buscar_elementos, "ul.collapsible collapsible-accordion > li:nth-child(2)"
  element :link_links, "a[href*='/buscaelementos/links']"
  element :link_botoes, "a[href='/buscaelementos/inputsetextfield']"
  element :link_radio_checkbox, "a[href*='/buscaelementos/radioecheckbox']"
  element :link_drop_down, "a[href*='/buscaelementos/dropdowneselect']"
  element :link_textos, "a[href*='/buscaelementos/textos']"
  element :link_tabela, "a[href*='/buscaelementos/table']" 
end