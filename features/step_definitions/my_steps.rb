 Given(/^Inicio de la aplicacion$/) do
    visit '/'
  end
  
  Then(/^Que el titulo sea "([^"]*)"$/) do |titulo|
    expect(find("h1").text).to eq titulo 
  end

  Then(/^Que contenga el boton "([^"]*)"$/) do |texto|
    expect(find("a.btn").text).to eq texto 
  end

  Given(/^Pagina de pregunta$/) do
    visit '/pregunta'
  end

  Then(/^Que contenga la pregunta "([^"]*)"$/) do |pregunta|
    expect(find("label.pregunta").text).to eq pregunta 
  end