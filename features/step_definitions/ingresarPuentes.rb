Given("visito la inicio2 luego ingreso los datos y los puentes {string}") do |datos|
    visit '/'
    click_button('iniciar2')
    fill_in('datos_ingresados', :with => datos)
end

When("comienzo el juego {string}") do |ejecutar|
    click_button('ejecutar')
end

Then("muestra el tamaño {string}") do |string|
    expect(page.body).to match /#{string}/m
end
#auto 1
Then("muestra el auto 1 {string}") do |string|
    expect(page.body).to match /#{string}/m
end

Then("inicio 1 {string}") do |string|
    expect(page.body).to match /#{string}/m
end

Then("comandos 1 {string}") do |string|
    expect(page.body).to match /#{string}/m
end

Then("final 1 {string}") do |string|
    expect(page.body).to match /#{string}/m
end
#auto 2
Then("muestra el auto 2 {string}") do |string|
    expect(page.body).to match /#{string}/m
end

Then("inicio 2 {string}") do |string|
    expect(page.body).to match /#{string}/m
end

Then("comandos 2 {string}") do |string|
    expect(page.body).to match /#{string}/m
end

Then("final 2 {string}") do |string|
    expect(page.body).to match /#{string}/m
end