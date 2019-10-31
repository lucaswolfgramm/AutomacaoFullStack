#language:pt

Funcionalidade: Qual é o prato do Dia
    Queremos aber qual o prato do dia na capital Paulista

    Cenario: Hoje é dia de Virado a Paulista

        Dado que hoje é segunda-feira
        Quando eu pergutno qual é o prato do dia
        Então a responta deve ser "Virado a Paulista"

    Cenario: Hoje é dia de Hot-Dog

        Dado que hoje é terça-feira
        Quando eu pergutno qual é o prato do dia
        Então a responta deve ser "Hot-Dog"