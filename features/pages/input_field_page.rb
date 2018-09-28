class InputPage < SitePrism::Page
  set_url '/buscaelementos/inputsetextfield'

  element :field_name, '#first_name'
  element :field_last_name, '#last_name'
  element :field_password, '#password'
  element :field_email, '#email'
  element :field_text_area, '#textarea1'

  def fill_in_fields(credencial)
    field_name.set data(credencial, "nome")
    field_last_name.set data(credencial, 'sobrenome')
    field_password.set "12345678"
    field_email.set data(credencial, 'email')
    field_text_area.set data(Faker::Lorem.paragraph)
  end
  
  def data(credencial, key)
    credencial = credencial.gsub(" ", "_")
    credencial = CREDENCIAIS[credencial.to_sym]
    return credencial[key.to_sym]
  end
end