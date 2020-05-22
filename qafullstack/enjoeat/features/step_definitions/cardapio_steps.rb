
Before do
  @restaurant_page = RestaurantPage.new
  @cardapio_page = CardapioPage.new
end

Dado("que eu acesse a lista de restaurantes") do
  @restaurant_page.url_restaurants
end

Quando("eu escolho o restaurante {string}") do |restaurant|
  @restaurant_page.select_restaurant(restaurant)
end

Então("vejo os seguintes itens disponíveis no cardápio:") do |table|
  itens = @cardapio_page.itens_cardapio

  itens_data = table.hashes

  itens_data.each_with_index do |value, index|
    expect(itens[index]).to have_text value["produto"].upcase
    expect(itens[index]).to have_text value["descricao"]
    expect(itens[index]).to have_text value["preco"]
  end
end

Então("eu vejo as seguintes informacoes adicionais:") do |table|
  infos = table.rows_hash
  detail = @cardapio_page.details
  expect(detail).to have_text infos["categoria"]
  expect(detail).to have_text infos["descricao"]
  expect(detail).to have_text infos["horarios"]
end
