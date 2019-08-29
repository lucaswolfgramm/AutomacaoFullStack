class Conta
  attr_accessor :saldo, :nome

  def initialize(nome)
    self.saldo = 0
    self.nome = nome
  end

  def deposita(valor)
    #puts "Depositando a quantia de " + valor.to_s + " reais"
    self.saldo += valor
    puts "Depositando a quantia de #{valor} reais na conta de #{self.nome}."
  end

  def saldoConta
    puts "Conta do #{self.nome} tem saldo de #{saldo}"
  end
end

c = Conta.new("Lucas")
c.deposita(100.00)
c.deposita(10.00)
c.saldoConta

c = Conta.new("Jenni")
c.deposita(100.00)
c.saldoConta
