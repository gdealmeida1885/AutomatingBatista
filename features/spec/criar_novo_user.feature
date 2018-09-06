# language: pt
# encoding: utf-8

Funcionalidade: Criar Novo Usario
    Para que eu consiga me logar no site automacaocombatista
    Como um novo usuario, eu devo conseguir preencher o formulário
    E criar uma nova conta com sucesso
    
    @valid_user
    Cenario: Criar Novo Usuario Válido
        Dado que eu estou no site "http://automacaocombatista.herokuapp.com/treinamento/home"
        Quando acesso a página de cadastro de usuário
        E cadastro um novo usuário válido
        Então eu devo ver a mensagem "Usuário Criado com sucesso"
    
    @invalid_user
    Cenario: Criar Usuário Inválido
        Dado que eu estou no site "http://automacaocombatista.herokuapp.com/treinamento/home"
        Quando acesso a página de cadastro de usuário
        E cadastro um usuário inválido
        Então eu devo ver a mensagem "{int} error(s) proibiu que este usuário fosse salvo:"