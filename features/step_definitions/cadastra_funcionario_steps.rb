Dado(/^que loguei no site OrangeHRM com usuario "([^"]*)" e senha "([^"]*)"$/) do |arg1, arg2|
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

 	$first_name_in = arg1
 	$middle_name_in = arg2
	$last_name_in = arg3

	find(:xpath, '//input[@id="btnSave"]').click
	$acao ="inserido"
end

Então(/^sera exibido a pagina que contem os dados pessoais do funcionario cadastrado$/) do
	first_name = find(:xpath, '//input[@id="personal_txtEmpFirstName"]').value
	middle_name = find(:xpath, '//input[@id="personal_txtEmpMiddleName"]').value
	last_name = find(:xpath, '//input[@id="personal_txtEmpLastName"]').value
	full_name_page = first_name+" "+middle_name+" "+last_name

	full_name_in = $first_name_in+" "+$middle_name_in+" "+$last_name_in
 	if full_name_in == full_name_page
   		puts "O funcionario ("+full_name_in+") foi "+$acao+" com sucesso!"
   	else
   		puts "O funcionario ("+full_name_in+") não foi "+$acao+" com sucesso!"
   	 	expect(full_name_in).to eq(full_name_page) 
 	end
end