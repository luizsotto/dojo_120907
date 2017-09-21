#language: pt 
#utf-8

Funcionalidade: Fazer uma alteração nos dados do novo funcionario
Eu como usuario 
Quero alterar as informações do novo funcionario cadastrado no Site OrangeHRM

Contexto: Consultar um funcionario
Dado que acessei a pagina Employee List no site OrangeHRM com usuario "Admin" e senha "admin"

@editar
Cenario: Realizar uma alteração nos dados de um funcionario cadastrado no site OrangeHRM
Dado que tenha realizado um pesquisa pelo nome do empregado "Teste Meio FIM" e com id "0024"
Quando realizar a edição dos dados do funcionario para "Robert_alterado"
Então sera exibido a pagina que contem os dados pessoais do funcionario cadastrado
