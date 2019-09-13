

describe "Caixas de seleção", :checkbox do
  before(:each) do
    visit "/checkboxes"
  end

  it "Marcando uma opção" do
    check("thor") #id
  end

  it "Desmarcando uma opção" do
    uncheck("antman") #name
  end

  it "Marcando com find set true" do
    find('input[value=cap]').set(true) #value
  end

  it "Desmarcando com find set false" do
    find('input[value=guardians]').set(false) #value
  end

  after(:each) do
    sleep 3
  end
end
