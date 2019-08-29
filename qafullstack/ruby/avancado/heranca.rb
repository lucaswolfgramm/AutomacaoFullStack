
class Veiculo
  def initialize(nome, masca, modelo)
    self.nome = nome
    self.marca = marca
    self.modelo = modelo
  end

  def ligar
    puts "#{nome} esta pronto para iniciar o trajeto!"
  end

  def buzinar
    puts "Beep! Beep!"
  end
end

class Carro < Veiculo
  attr_accessor :nome, :marca, :modelo

  def dirigir
    puts "#{nome} iniciando o trajeto"
  end
end

class Moto < Veiculo
  attr_accessor :nome, :marca, :modelo

  def initialize(nome, masca, modelo)
    self.nome = nome
    self.marca = marca
    self.modelo = modelo
  end

  def pilotar
    puts "#{nome} iniciando o trajeto"
  end
end

################################################
gol = Carro.new("Gol", "Volks", "MI")
gol.ligar
gol.buzinar
gol.dirigir

lancer = Carro.new("Lancer", "Mitsubish", "EW")
lancer.ligar
lancer.buzinar
lancer.dirigir

fazer = Moto.new("Fazer", "Yamaha", "250x")
fazer.ligar
fazer.buzinar
fazer.pilotar
