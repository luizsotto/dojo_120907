Dado(/^que loguei no site OrangeHRM com usuario "([^"]*)" e senha "([^"]*)"$/) do |arg1, arg2|
  #pending # Write code here that turns the phrase above into concrete actions
  visit 'http://opensource.demo.orangehrmlive.com/'
  fill_in('txtUsername',:with=>arg1)
  fill_in('txtPassword',:with=>arg2)
  find(:xpath, '//input[@id="btnLogin"]').click
end

Dado(/^que estou na pagina Add Employee$/) do
  #Clicar na parte do PIM
  find(:xpath, '//a[@id="menu_pim_viewPimModule"]').click
  find(:xpath, './/a[@id="menu_pim_addEmployee"]').click
end

Quando(/^realizar o cadastro do novo funcionario com os dados "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)"$/) do |arg1, arg2, arg3, arg4, arg5, arg6|
 fill_in('firstName',:with=>arg1)
 fill_in('middleName',:with=>arg2)
 fill_in('lastName',:with=>arg3)
 check('chkLogin')
 fill_in('user_name',:with=>arg4)
 fill_in('user_password',:with=>arg5)
 fill_in('re_password',:with=>arg6)
end

Então(/^sera exibido a pagina que contem os dados pessoais do funcionario cadastrado$/) do
  
end