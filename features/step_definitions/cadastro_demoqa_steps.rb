#You can implement step definitions for undefined steps with these snippets:

Dado(/^que estou a pagina de cadastro$/) do
  visit 'http://demoqa.com/'
  find(:xpath, '//a[text()="Registration"]').click
end

Quando(/^realizar o cadastro$/) do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  fill_in('first_name',:with=>'teste inmdojo')
  fill_in('last_name',:with=>'teste inmdojo')
  fill_in('phone_9',:with=>'5511980901180')
  fill_in('username',:with=>'teste inmdojo1')
  fill_in('e_mail',:with=>'teste@inmdojo1.com.br')
  fill_in('password',:with=>'123456@789')
  find(:xpath,'//input[@id="pie_register"][value="dance"]').click
  fill_in('confirm_password_password_2',:with=>'123456@789')
  click_button('Submit')
end

Então(/^sera exibido uma mensagem de sucesso$/) do
	assert_text('Thank you for your registration') 
end