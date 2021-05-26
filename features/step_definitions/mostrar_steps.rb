Given("visito la pagina de Comandos e ingreso los datos {string}") do |datos|
    visit '/'
    click_button('iniciar')
    fill_in('datos_ingresados', :with => datos)
end

When("hago click en el botton {string}") do |ejecutar|
    click_button('ejecutar')
end

Then("muestrar la posicion inicial del auto {string}") do |string|
    expect(page.body).to match /#{string}/m
end

Then("deberia mostrar los comandos ingresados {string}") do |string|
    expect(page.body).to match /#{string}/m
end

Then("deberia mostrar la posicion final del auto {string}") do |string|
    expect(page.body).to match /#{string}/m
end
