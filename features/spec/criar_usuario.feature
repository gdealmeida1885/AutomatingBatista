# language: pt

Funcionalidade: Criar Usuário
    Eu como visitante do site automacao batista
    Quero criar um novo usuario
    Para que eu possa ter acesso às funcionalidades do site

    Contexto: Acessar página de cadastro de usuário
        Dado que eu estou no site automacaocombatista
        Quando acesso a página de cadastro de usuário
    
    @valid_user
    Cenario: Criar Usuario Válido
        E realizo cadastro de um "usuario valido"
        Então eu devo ver a mensagem de sucesso
    
    @invalid_user 
    Cenario: Criar Usuário Inválido
        E realizo cadastro de um "usuario invalido"
        Então eu devo visualizar mensagem de erro