CREDENCIAIS = {
    usuario_valido: {
        nome: Faker::HarryPotter.character,
        sobrenome: Faker::GameOfThrones.character,
        email: Faker::Internet.email,
        endereco: Faker::Address.street_name,
        profissao: "Programador",
        idade: rand(80),
        sexo: Faker::Gender.binary_type,
        universidade: Faker::University.name
    },
    usuario_invalido: {
        nome: Faker::GameOfThrones.character,
        sobrenome: Faker::GameOfThrones.house,
        idade: rand(80),
        profissao: "Aposentado"
    }
}