# ejemplos tomados de
# https://github.com/teamcapybara/capybara#using-capybara-with-cucumber


Given(/^Inicio la aplicacion de Ejemplo$/) do
  visit '/template'
end

Then(/^Se llama "(.*?)"$/) do |titulo|
  expect(page).to have_title titulo
end

When(/^Inicio el juego con jugador "(.*?)"$/) do |nombre|
  fill_in("jugador_nombre", with: nombre)
  click_button("Iniciar Juego")
end

Then(/^El contador inicia en (\d+)$/) do |ahora|
  expect(find("#contador").text).to eq ahora
end

Given(/^Inicio la aplicacion$/) do
  visit '/'
end

When(/^Navego a la aplicacion de Ejemplo$/) do
  click_link("os ejemplos")
end


# Verifica el contenido de una celda especifica de una tabla
# Para usarlo, cada celda debe tener un ID unico, como N_XX (N_1)
Then(/^El (\d+) jugador es "(.*?)"$/) do |pos, nombre|
  celda= "N_#{pos}"
  expect(find("##{celda}").text).to eq nombre
end

When /^I click on "(.*)"$/ do |text|
  click_link(text)
end

Then /^I should see "(.*)"$/ do |text|
  last_response.body.should =~ /#{text}/m
end

# No usar =)
Given /^I post to the web app$/ do
  visit '/', :post, "field_name=value"
end
#other options:
#find_field('First Name').value
#find_link('Hello', :visible => :all).visible?
#find_button('Send').click

#find(:xpath, "//table/tr").click
#find("#overlay").find("h1").click
#all('a').each { |a| a[:href] }

#see more: https://github.com/jnicklas/capybara
