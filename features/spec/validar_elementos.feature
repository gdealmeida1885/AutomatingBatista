#language: pt

Funcionalidade: Clicar Links
  Eu como um programador do site Automação Com Batista
  Devo clicar nos de validar elementos
  Para que eu possa validar os links do site
  

  Contexto: Acessar a página de links 
    Dado que eu estou no site automacaocombatista
    Quando acesso a página de links

  @cenario1
  Esquema do Cenario: Clicar Links
    E clico no link "<link>"
    Então devo ver a seguinte mensagem "<mensagem>"

    Exemplos:
    |link                            |mensagem               |
    |Ok 200 - Sucess                 |Success!!              |
    |Erro 400 - Bad Request          |Bad Request!!          | 
    |Erro 404 - Page not found       |Page Not Found!!       |
    |Erro 500 - Internal Server Error|Internal Server Error!!|