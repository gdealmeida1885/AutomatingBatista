class CadastroUsuario < SitePrism::Page
  element :campo_nome_usuario, "div > #user_name"
  element :campo_sobrenome_usuario, "#user_lastname"
  element :campo_email_usuario, "#user_email"
  element :campo_endereco_usuario, "#user_address"
  element :campo_universidade_usuario, "#user_university"
  element :campo_profissao_usuario, "#user_profile"
  element :campo_genero_usuario, "#user_gender"
  element :campo_idade_usuario, "#user_age"
  element :botao_criar_usuario, "div > div.btn"
  element :mensagem_sucesso_cadastro, "#notice"
  element :mensagem_erro_cadastro, "#error_explanation"

  def cadastra_usuario(credencial)
    credencial == "usuario valido" ? preencher_cadastro_valido(credencial) : preencher_cadastro_invalido(credencial)
  end

  def preencher_cadastro_invalido(credencial)
    campo_nome_usuario.set data(credencial, "nome")
    campo_sobrenome_usuario.set data(credencial, "sobrenome")
    campo_profissao_usuario.set data(credencial, "profissao")
    campo_idade_usuario.set data(credencial, "idade")

  end

  def preencher_cadastro_valido(credencial)
    campo_nome_usuario.set data(credencial, "nome")
    campo_sobrenome_usuario.set data(credencial, "sobrenome")
    campo_email_usuario.set data(credencial, "email")
    campo_endereco_usuario.set data(credencial, "endereco")
    campo_profissao_usuario.set data(credencial, "profissao")
    campo_genero_usuario.set data(credencial, "sexo")
    campo_universidade_usuario.set data(credencial, "universidade")
    campo_idade_usuario.set data(credencial, "idade")
  end

  def clicar_criar
    botao_criar_usuario.click
  end

  def existe_mensagem_sucesso?
    has_mensagem_sucesso_cadastro?
  end

  def existe_mensagem_erro?
    has_mensagem_erro_cadastro?
  end

  def data(credencial, key)
    credencial = credencial.gsub(" ", "_")
    credencial = CREDENCIAIS[credencial.to_sym]
    return credencial = credencial[key.to_sym]
  end
end