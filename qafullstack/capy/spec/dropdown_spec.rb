
describe "Caixa de opções", :dropdown do
  it "Item específico simples" do
    visit "/dropdown"
    select("Loki", from: "dropdown")
    sleep 3
  end

  it "Item específico com find" do
    visit "/dropdown"
    dropList = find(".avenger-list")
    dropList.find("option", text: "Scott Lang").select_option
    sleep 3
  end

  it "Qualquer item", :sample do
    visit "/dropdown"
    dropList = find(".avenger-list")
    dropList.all("option").sample.select_option
    sleep 3
  end
end
