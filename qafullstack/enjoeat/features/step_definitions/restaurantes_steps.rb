
Quando("acesso a lista de restaurantes") do
  visit "/restaurants"
end

Então("vejo todas as opções disponíveis") do
  restaurantes = all(".restaurant-item")
  expect(restaurantes.size).to be > 0
end

Então("cada restaurante deve exibir sua categoria") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("cada restaurante deve exibir o tempo de entrega") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("cada restaurante deve exibir sua nota de avaliação") do
  pending # Write code here that turns the phrase above into concrete actions
end
