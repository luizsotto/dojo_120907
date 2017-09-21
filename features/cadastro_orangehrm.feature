#language: pt 
#utf-8

@cadastroorangehrm
Funcionalidade: Fazer um Cadastro de um novo empregado
Eu como usuario 
Quero cadastrar um novo empregado no Site OrangeHRM


Contexto: logar
Dado que loguei no site OrangeHRM com usuario "Admin" e senha "admin"


Cenario: Realizar o cadastro de um novo funcionario no site OrangeHRM
Dado que estou na pagina Add Employee
Quando realizar o cadastro do novo funcionario com os dados "Teste" "Meio" "FIM" "teste" "teste1234" "teste1234"
Então sera exibido a pagina que contem os dados pessoais do funcionario cadastrado
