Dado("que eu estou no site automacaocombatista") do
  @home = HomePage.new
  @home.load
  @home.estou_pagina_inicial?
end

Quando("acesso a página de cadastro de usuário") do
  @home.acessar_cadastro_usuario
end

Quando("realizo cadastro de um {string}") do |credencial|
  @usuario = CadastroUsuario.new
  @usuario.cadastra_usuario(credencial)
end

Então("eu devo visualizar mensagem de erro") do
  @usuario.existe_mensagem_erro?
end

Então("eu devo ver a mensagem de sucesso") do
  @usuario.existe_mensagem_sucesso?
end