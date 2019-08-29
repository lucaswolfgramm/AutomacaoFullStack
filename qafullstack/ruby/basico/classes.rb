
class Carro
  attr_accessor :nome

  def ligar
    puts "O carro esta pronto para ligar"
  end
end

civic = Carro.new
civic.nome = "Civic"

puts civic.nome
civic.ligar
