Given("I'm at automacaocombatista") do                                       
  @home = HomePage.new
  @home.load
  @home.estou_pagina_inicial?
end                                                                          
                                                                             
When("I acess the Input pages") do                                           
  @nav = NavMenu.new
  @nav.botao_buscar_elementos.click
  @nav.link_input.click
end                                                                          
                                                                             
Then("I must fill all fields") do                                            
  pending # Write code here that turns the phrase above into concrete actions
end                                                                          