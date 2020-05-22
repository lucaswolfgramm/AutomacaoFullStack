class RestaurantPage
    include Capybara::DSL

    def url_restaurants
        visit "/restaurants"
    end

    def list_restaurants
        all(".restaurant-item")
    end

    def select_restaurant(restaurant)
        find(".restaurant-item", text: restaurant.upcase).click
    end

    def cart
        CartView.new
    end
end