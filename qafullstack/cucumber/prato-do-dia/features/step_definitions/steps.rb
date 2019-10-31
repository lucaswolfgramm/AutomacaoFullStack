
module Enjoeat
  def prato_do_dia(dia)
    pratos = ["Virado a Paulista", "Hot-Dog", "Chucrute", "Rollmops", "Sushi", "Feijão", "Sopa"]

    case dia
    when "Segunda-Feira"
      pratos[0]
    when "Terça-Feira"
      pratos[1]
    else
      "Prato nao encontrado!"
    end
  end
end

World Enjoeat

Dado("que hoje é segunda-feira") do
  @hoje = "Segunda-Feira"
end

Dado("que hoje é terça-feira") do
  @hoje = "Terça-Feira"
end

Quando("eu pergutno qual é o prato do dia") do
  @resposta_obtida = prato_do_dia(@hoje)
end

Então("a responta deve ser {string}") do |resposta_esperada|
  expect(@resposta_obtida).to eql resposta_esperada
end
