class HomePage < SitePrism::Page
    set_url 'http://automacaocombatista.herokuapp.com/treinamento/home'

    element :titulo_pagina, "div.tamanhodivupl > h5"
    element :formulario, "ul.collapsible.collapsible-accordion > li:first-child"
    element :criar_usuario, "a[href*='users/new']"

    def estou_pagina_inicial?
        has_titulo_pagina?
    end

    def acessar_cadastro_usuario
        formulario.click
        criar_usuario.click
    end

end