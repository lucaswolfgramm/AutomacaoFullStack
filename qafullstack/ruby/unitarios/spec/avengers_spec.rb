class AvengersHeadQuarter
  attr_accessor :list

  def initialize
    self.list = []
  end

  def put(avanger)
    self.list.push(avanger)
  end
end

describe AvengersHeadQuarter do
  it "Deve adicionar um vingador" do
    hq = AvengersHeadQuarter.new

    hq.put("SpiderMan")
    hq.put("Lucas")
    #expect(hq.list).to eql ["SpiderMan"] #verifica se retorna apenas o spider
    expect(hq.list).to include "SpiderMan"
  end

  it "Deve adicionar uma lista de vingadores" do
    hq = AvengersHeadQuarter.new

    hq.put("Thor")
    hq.put("Hulk")
    hq.put("SpiderMan")

    expect(hq.list).to include "Thor"
    expect(hq.list.size).to be >= 3

    res = hq.list.size > 0
    expect(res).to be true
  end

  it "Thor deve ser o primeiro da lista" do
    hq = AvengersHeadQuarter.new

    #hq.put("Lucas")
    hq.put("Thor")
    hq.put("Hulk")
    hq.put("SpiderMan")

    expect(hq.list).to start_with("Thor")
  end

  it "IronMan deve ser o ultimo da lista" do
    hq = AvengersHeadQuarter.new

    hq.put("Thor")
    hq.put("Hulk")
    hq.put("SpiderMan")
    hq.put("IronMan")
    #hq.put("Lucas")

    expect(hq.list).to end_with("IronMan")
  end

  it "Deve conter o sobrenome - String" do
    avenger = "Peter Parker"

    expect(avenger).to match(/Parker/)
    expect(avenger).not_to match(/Wolfgramm/)
    expect(avenger).not_to include("Lucas Wolfgramm")
    expect(avenger).to end_with("Parker")
  end

  it "Deve conter o sobrenome - Array" do
    avenger = ["Peter Parker", "Lucas Wolfgramm"]

    expect(avenger).to match_array(["Peter Parker", "Lucas Wolfgramm"])
    expect(avenger).to contain_exactly("Peter Parker", "Lucas Wolfgramm")
    expect(avenger).to include("Peter Parker", "Lucas Wolfgramm")
    expect(avenger).not_to include("Bug Junior")
    expect(avenger).to include("Lucas Wolfgramm")
    expect(avenger).to start_with(["Peter Parker"])
    expect(avenger).not_to end_with(["Peter Parker"])
  end
end
