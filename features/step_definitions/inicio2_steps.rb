Given("ingreso a la pagina de inicio2") do
    visit '/'
    click_button('iniciar2')
end

When("ingreso datos de los 2 autos {string}") do |datos|
    fill_in('datos_ingresados', :with => datos)
end

When("le doy click al button {string}") do |ejecutar|
    click_button('ejecutar')
end

Then("debe mostrar la Superficie del Terreno {string}") do |string|
    expect(page.body).to match /#{string}/m
end