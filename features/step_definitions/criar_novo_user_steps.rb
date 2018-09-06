Dado("que eu estou no site {string}") do |site|
    visit(site)
end

Quando("acesso a página de cadastro de usuário") do
    find(:xpath, '/html/body/div[2]/div[1]/ul/li[1]/a').click()
    click_link("Criar Usuários")
end

Quando("cadastro um novo usuário válido") do
    @name = Faker::HarryPotter.character
    @name = @name.split(" ") if @name.length > 1
    find_field("user_name").set(@name[0])
    find_field("user_lastname").set(@name[1])
    find_field("user_email").set(Faker::Internet.email)
    find_field("user_address").set(Faker::Address.street_name)
    find_field("user_university").set(Faker::University.name)
    find_field("user_profile").set("Programmer")
    find_field("user_gender").set(Faker::Gender.binary_type)
    find_field("user_age").set(rand(80))
    click_on("Criar")
end

Quando("cadastro um usuário inválido") do                                    
    pending # Write code here that turns the phrase above into concrete actions
  end                                                                          

Então("eu devo ver a mensagem {string}") do |string|
    expect(page).to have_text('Usuário Criado com sucesso')
end