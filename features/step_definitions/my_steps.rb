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
    expect(find(:css, ".btn").value).to eq categoria
  end

  Given(/^Pagina de pregunta$/) do
    visit '/pregunta'
  end

  Given(/^Pagina de categoria$/) do
    visit '/categoria'
  end

  Then(/^Que contenga la pregunta "([^"]*)"$/) do |pregunta|
    expect(find("label.pregunta").text).to eq pregunta 
  end