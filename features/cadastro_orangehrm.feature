#language: pt 
#utf-8

Funcionalidade: Fazer um Cadastro de um novo empregado
Eu como usuario 
Quero cadastrar um novo empregado no Site OrangeHRM



@cadastroorangehrm
Cenario: Fazer um cadastro de um novo empregado no site
Dado que estou na pagina de cadastrar um empregado
Quando realizar o cadastro do empregado
| First Name |Last Name|Phone Number|Username|E-mail            |Password|Confirm Password|
|  Teste     | Teste   | 1111       |  teste | teste@teste.com  |  teste |   teste        |
Então sera exibido a pagina que contem os dados pessoais do empregado
