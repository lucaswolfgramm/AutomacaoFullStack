class CardapioPage
    include Capybara::DSL

    def details
        find("#detail")
    end

    def itens_cardapio
        all(".menu-item-info-box")
    end

    def include_item(item_name)
        find(".menu-item-info-box", text: item_name.upcase).find(".add-to-cart").click
    end
end