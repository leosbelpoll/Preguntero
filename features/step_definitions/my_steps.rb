Given(/^Inicio de la aplicacion$/) do
    visit '/'
end

Then(/^Codigo de respuesta (\d+)$/) do |code|
    expect(page.status_code).to eq code.to_i
end