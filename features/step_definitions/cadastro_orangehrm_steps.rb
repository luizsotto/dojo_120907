Dado(/^que loguei no site OrangeHRM com usuario "([^"]*)" e senha "([^"]*)"$/) do |arg1, arg2|
  #pending # Write code here that turns the phrase above into concrete actions
  visit 'http://opensource.demo.orangehrmlive.com/'
  fill_in('txtUsername',:with=>arg1)
  fill_in('txtPassword',:with=>arg2)
  binding.pry
  find(:xpath, '//input[@id="txtPassword"]').click
end

Dado(/^que estou na pagina Add Employee$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando(/^realizar o cadastro do novo funcionario$/) do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  pending # Write code here that turns the phrase above into concrete actions
end

Então(/^sera exibido a pagina que contem os dados pessoais do funcionario cadastrado$/) do
  pending # Write code here that turns the phrase above into concrete actions
end