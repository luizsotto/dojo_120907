#language: pt 
#utf-8

Funcionalidade: Fazer um Cadastro
Eu como usuario 
Quero me cadastrar 
No Site Demoqa

@cadastro
Cenario: Fazer um cadastro no site demoqa
Dado que estou a pagina de cadastro
Quando realizar o cadastro
| First Name |Last Name|Phone Number|Username|E-mail            |Password|Confirm Password|
|  Teste     | Teste   | 1111       |  teste | teste@teste.com  |  teste |   teste        |
Então sera exibido uma mensagem de sucesso
