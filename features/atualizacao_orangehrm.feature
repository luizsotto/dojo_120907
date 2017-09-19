#language: pt 
#utf-8

Funcionalidade: Fazer uma alteração nos dados do novo funcionario
Eu como usuario 
Quero alterar as informações do novo empregado cadastrado no Site OrangeHRM

Contexto: Consultar um funcionario
Dado que consultei as informações de um funcionario cadastrado no site OrangeHRM com usuario "Admin" e senha "admin"

@editar
Cenario: Realizar uma alteração nos dados de um funcionario cadastrado no site OrangeHRM
Dado que tenha realizado um pesquisa pelo nome do empregado "aa" e com id "0040"
Quando realizar a edição dos dados do funcionario para "aa_alterado"
Então sera exibido a pagina que contem os dados pessoais do funcionario cadastrado
