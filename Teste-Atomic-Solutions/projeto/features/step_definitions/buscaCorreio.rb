Dado("que acesso o site dos correios") do
  visit "http://www.correios.com.br/"
end

Quando("eu informo um CEP {string}") do |cep|
  find("#acesso-busca").set cep
  find(:xpath, "//input[@id='acesso-busca']/following-sibling::button[@class='bt-link-ic']/i[@class='ic-busca-out']").click
end

Entao("devo ver {string}") do |textEsperado|
  textEncontrado = find(:xpath, "//div[@class='ctrlcontent']/p[contains(text(), 'DADOS ENCONTRADOS COM SUCESSO.')]")
  puts(textEncontrado)
  expect(textEncontrado.text).to eql textEsperado
end
