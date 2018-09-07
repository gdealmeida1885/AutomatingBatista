# language: pt

Funcionalidade: Criar Usuário
    Eu como visitante do site automacao bastista
    Quero criar um novo usuario

    Contexto: Acessar página de cadastro de usuário
        Dado que eu estou no site automacaocombatista
        Quando acesso a página de cadastro de usuário
    
    @valid_user
    Cenario: Criar Novo Usuario Válido
        E cadastro um novo usuário válido
        Então eu devo ver a mensagem "Usuário Criado com sucesso"
    
    @invalid_user
    Cenario: Criar Usuário Inválido
        E realizo cadastro de um "usuario invalido"
        Então eu devo visualizar mensagem de erro