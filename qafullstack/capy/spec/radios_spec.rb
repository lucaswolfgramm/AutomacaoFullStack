

describe "Botões de Radio", :radio do
  before(:each) do
    visit "/radios"
  end

  it "Seleção por ID" do
    choose("cap")
  end

  it "Seleção por FIND e CSS Selector" do
    find("input[value=guardians]").click
  end

  after(:each) do
    sleep 3
  end
end
