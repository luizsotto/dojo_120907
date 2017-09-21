Dado(/^que acessei a pagina Employee List no site OrangeHRM com usuario "([^"]*)" e senha "([^"]*)"$/) do |arg1, arg2|
	visit 'http://opensource.demo.orangehrmlive.com/'
	fill_in('txtUsername',:with=>arg1)
	fill_in('txtPassword',:with=>arg2)
	find(:xpath, '//input[@id="btnLogin"]').click
	find(:xpath, '//a[@id="menu_pim_viewPimModule"]').click
end

Dado(/^que tenha realizado um pesquisa pelo nome do empregado "([^"]*)" e com id "([^"]*)"$/) do |arg1, arg2|
	fill_in('empsearch_employee_name_empName',:with=>arg1)
 	fill_in('empsearch_id',:with=>arg2)
	find(:xpath, '//input[@id="searchBtn"]').click
	find(:xpath, '//a[text()="Id"]/ancestor::table/tbody/descendant::td[count(//a[text()="Id"])+1]/a').click
	$first_name_in = find(:xpath, '//input[@id="personal_txtEmpFirstName"]').value
	$middle_name_in = find(:xpath, '//input[@id="personal_txtEmpMiddleName"]').value
	$last_name_in = find(:xpath, '//input[@id="personal_txtEmpLastName"]').value
	
end

Quando(/^realizar a edição dos dados do funcionario para "([^"]*)"$/) do |arg1|
	#clicar em editar
	find(:xpath, '//input[@id="btnSave"][@value="Edit"]').click
	fill_in('personal_txtEmpFirstName',:with=>arg1)
	$first_name_in = arg1
	find(:xpath, '//input[@id="btnSave"][@value="Save"]').click
end