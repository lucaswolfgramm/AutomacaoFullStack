#language:pt

Funcionalidade: Qual é o prato do Dia
    Queremos aber qual o prato do dia na capital Paulista

    Esquema do Cenario: Prato do dia
        
        Dado que hoje é <dia>
        Quando eu pergutno qual é o prato do dia
        Então a resposta deve ser <resposta>

        Exemplos:
        | dia               | resposta
        | "Segunda-Feira"   | "Virado a Paulista" 
        | "Terça-Feira"     | "Dobradinha"
        | "Quarta-Feira"    | "Feijoada"
        | "Quinta-Feira"    | "Macarronada"
        | "Sexta-Feira"     | "Filé de Merluza"