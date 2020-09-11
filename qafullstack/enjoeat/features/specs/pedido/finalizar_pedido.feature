#language: pt

@green_food
Funcionalidade: Finalizar pedido
    Para que eu possa receber o pedido no meu endereco
    Sendo um usuário fechou o carrinho com itens
    Posso finalizar o meu pedido

    Cenario: Finalizar pedido com Cartão Refeição

        Dado que eu fechei o carrinho com o itens:
            | quantidade | nome                | descricao                                | subtotal |
            | 1          | Suco Detox          | Suco de couve, cenoura, salsinha e maçã. | R$ 14,90 |
            | 2          | Hamburger de Quinoa | Cheio de fibras e muito saboroso.        | R$ 21,00 |
        E informei os meus dados de entrega:
            | nome        | Lucas        |
            | email       | eu@lucas.com |
            | rua         | Brasil       |
            | numero      | 72           |
            | complemento | Casa         |
        Quando eu finalizo o pedido com "Cartão Refeição"
        Então devo ver a seguinte mensagem:
        """
        Seu pedido foi recebido pelo restaurante. Prepare a mesa que a comida está chegando!
        """