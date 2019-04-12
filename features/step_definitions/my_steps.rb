 Given(/^Inicio de la aplicacion$/) do
    visit '/'
  end
  
  Then(/^Que el titulo sea "([^"]*)"$/) do |titulo|
    expect(find("h1").text).to eq titulo 
  end

  Then(/^Que contenga el boton "([^"]*)" y texto "([^"]*)"$/) do |boton, texto|
    expect(find("\##{boton}").value).to eq texto 
  end

  When(/^Presiono boton "([^"]*)"$/) do |boton|
    click_button(boton)
    visit("/categoria")
  end

  Given(/^Pagina de pregunta$/) do
    visit '/pregunta'
  end

  Then(/^Que contenga la pregunta "([^"]*)"$/) do |pregunta|
    expect(find("legend.pregunta").text).to eq pregunta 
  end

  Then(/^Que contenga la opcion "([^"]*)"$/) do |respuesta|
    expect(find("label[for='r2']").text).to eq respuesta 
  end

  Given(/^Envio de pregunta "([^"]*)" y opcion "([^"]*)"$/) do |pregunta, opcion|
    fill_in("pregunta", with: pregunta)
    choose "r2"
    click_button("submit")
  end
  
#   Then(/^La pagina resultado contiene "([^"]*)"$/) do |arg1|
#     expect(find("label[for='r2']").text).to eq respuesta 
#   end