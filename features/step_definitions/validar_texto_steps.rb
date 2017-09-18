


Dado(/^que esteja na pagina da inmetrics$/) do
  visit 'http://www.inmetrics.com.br/'
end

Quando(/^acessar a pagina Quem Somos$/) do
    find(:xpath, '//*[@id="menu-item-2960"]/a/span/span').click
end

Entao(/^deve validar o texto mais de (\d+) anos de atuação$/) do |arg1|
	sleep 5
	assert_text('MAIS DE 15 ANOS DE ATUAÇÃO')   
end