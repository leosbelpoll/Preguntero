 Given(/^Inicio de la aplicacion$/) do
    visit '/'
  end
  
  Then(/^Que el titulo sea "([^"]*)"$/) do |titulo|
    expect(find("h1").text).to eq titulo 
  end

  Then(/^Que contenga el boton "([^"]*)"$/) do |texto|
    expect(find(:css, ".btn").value).to eq texto
  end

  When(/^Presiono boton "([^"]*)"$/) do |boton|
    click_button(boton)
  end

  Then(/^Se ve categoria "([^"]*)"$/) do |categoria|
    expect(page.find(".btn[value='#{categoria}']").value).to eq categoria
  end

  Given(/^Pagina de pregunta$/) do
    visit '/pregunta'
  end

  Given(/^Pagina de categoria$/) do
    visit '/categoria'
  end

  Then(/^Que contenga delante de la pregunta "([^"]*)"$/) do |texto|
    expect(find("span.pregunta").text).to eq texto 
  end
  
  Then(/^Que contenga delante de las opciones "([^"]*)"$/) do |texto|
    expect(find("p.opciones").text).to eq texto 
  end

#   Given(/^Envio de pregunta "([^"]*)" y opcion "([^"]*)"$/) do |pregunta, respuesta|
#     fill_in("pregunta", with: pregunta)
#     choose respuesta
#     click_button("submit")
#   end
  
#   Then(/^La pagina resultado contiene "([^"]*)"$/) do |resultado|
#     expect(find("h1").text).to eq resultado 
#   end