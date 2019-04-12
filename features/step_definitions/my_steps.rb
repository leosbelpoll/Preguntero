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
    expect(find("label.pregunta").text).to eq pregunta 
  end