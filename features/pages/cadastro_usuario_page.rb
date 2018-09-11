class CadastroUsuario < SitePrism::Page

    element :sucesso_mensagem_cadastro, "#notice"
    element :erro_mensagem_cadastro, "#error_explanation"

    def cadastro_usuario_valido
        preencher_cadastro_valido
        clicar_criar
    end

    def preencher_cadastro_invalido(credencial)
        find_field("user_name").set data(credencial, "nome")
        find_field("user_lastname").set data(credencial, "sobrenome")
        find_field("user_profile").set data(credencial, "profissao")
        find_field("user_age").set data(credencial, "idade")
        clicar_criar
    end

    def preencher_cadastro_valido
        @name = Faker::HarryPotter.character
        @name = @name.split(" ") if @name.length > 1
        find_field("user_name").set(@name[0])
        find_field("user_lastname").set(@name[1])
        find_field("user_email").set(Faker::Internet.email)
        find_field("user_address").set(Faker::Address.street_name)
        find_field("user_university").set(Faker::University.name)
        find_field("user_profile").set("Programmer")
        find_field("user_gender").set(Faker::Gender.binary_type)
        find_field("user_age").set(rand(80))
    end

    def clicar_criar
        click_on("Criar")
    end

    def cadastro_realizado_com_sucesso(mensagem)
        has_sucesso_mensagem_cadastro?
    end

    def existe_mensagem_erro?
        has_erro_mensagem_cadastro?
    end

    def data(credencial, key)
        credencial = credencial.gsub(" ", "_")
        credencial = CREDENCIAIS[credencial.to_sym]
        return credencial = credencial[key.to_sym]
    end


end