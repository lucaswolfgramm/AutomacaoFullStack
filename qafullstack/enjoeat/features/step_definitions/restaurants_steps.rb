
Before do
  @restaurant_page = RestaurantPage.new
end

Dado("que temos os seguitnes restaurantes") do |table|
  @restaurants_data = table.hashes
end

Quando("acesso a lista de restaurantes") do
  @restaurant_page.url_restaurants
end

Então("devo ver todos os restaurantes da lista") do
  restaurants = @restaurant_page.list_restaurants

  @restaurants_data.each_with_index do |value, index|
    expect(restaurants[index]).to have_text value["nome"].upcase
    expect(restaurants[index]).to have_text value["categoria"]
    expect(restaurants[index]).to have_text value["entrega"]
    expect(restaurants[index]).to have_text value["avaliacao"]
  end
end
