#language: pt

Funcionalidade: Informacoes adicionais
    Para que eu possa ver as informacoes adicionais
    Sendo um usuário que escolheu um restaurante
    Posso ver a categoria, descricao detalhada e horario de funcionamento

    @infos
    Cenario: Detalhes do restaurante
        Dado que eu acesse a lista de restaurantes
        Quando eu escolho o restaurante "Burger House"
        Então eu vejo as seguintes informacoes adicionais:
            | categoria | Hamburgers                               |
            | descricao | 40 anos se especializando em trash food. |
            | horários  | Funciona todos os dias, de 10h às 22h    |