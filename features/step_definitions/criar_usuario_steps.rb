Dado("que eu estou no site automacaocombatista") do
    @home = HomePage.new
    @home.load
    @home.estou_pagina_inicial?
end

Quando("acesso a página de cadastro de usuário") do
    @home.acessar_cadastro_usuario
end

Quando("cadastro um novo usuário válido") do
    @usuario = CadastroUsuario.new
    @usuario.cadastro_usuario_valido
end

Quando("realizo cadastro de um {string}") do |credencial|
    @usuario = CadastroUsuario.new
    @usuario.preencher_cadastro_invalido(credencial)
end
  
Então("eu devo visualizar mensagem de erro") do
    @usuario.existe_mensagem_erro?
end                        

Então("eu devo ver a mensagem {string}") do |mensagem|
    expect(page).to have_text(mensagem)
end