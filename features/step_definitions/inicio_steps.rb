Given("visito la pagina de comandos") do
    visit '/'
    click_button('iniciar')
end
  
When("ingreso el posicion inicial del auto {string}") do |posicion_inicial|
    fill_in('comandos_ingresados', :with => posicion_inicial)
end
  
When("presiono el boton {string}") do |ejecutar|
    click_button('ejecutar')
end
  
Then("deberia mostrar la posicion inicial del auto {string}") do |string|
    expect(page.body).to match /#{string}/m
end

Then("deberia mostrar los comandos ingresados {string}") do |string|
    expect(page.body).to match /#{string}/m
end

Then("deberia mostrar la posicion final del auto {string}") do |string|
    expect(page.body).to match /#{string}/m
end