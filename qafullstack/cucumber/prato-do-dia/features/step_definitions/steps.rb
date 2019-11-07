
module Enjoeat
  def prato_do_dia(dia)
    pratos = ["Virado a Paulista", "Dobradinha", "Feijoada", "Macarronada", "Filé de Merluza", "Veja o Cardápio", "Fechado"]

    case dia
    when "Segunda-Feira"
      pratos[0]
    when "Terça-Feira"
      pratos[1]
    when "Quarta-Feira"
      pratos[2]
    when "Quinta-Feira"
      pratos[3]
    when "Sexta-Feira"
      pratos[4]
    when "Sábado"
      pratos[5]
    when "Domingo"
      pratos[6]
    else
      "Dia Inválido"
    end
  end
end

World Enjoeat

Dado("que hoje é {string}") do |dia|
  @hoje = dia
end

Quando("eu pergunto qual é o prato do dia") do
  @resposta_obtida = prato_do_dia(@hoje)
end

Então("a responta deve ser {string}") do |resposta_esperada|
  expect(@resposta_obtida).to eql resposta_esperada
end
