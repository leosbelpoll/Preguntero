 Given(/^Inicio de la aplicacion$/) do
    visit '/'
  end
  
  Then(/^Que el titulo sea "([^"]*)"$/) do |titulo|
    expect(find("h1").text).to eq titulo 
  end

  Then(/^Que contenga el boton "([^"]*)"$/) do |texto|
    expect(find("#iniciar").value).to eq texto 
  end

  When(/^Presiono boton "([^"]*)"$/) do |boton|
    click_button(boton)
  end