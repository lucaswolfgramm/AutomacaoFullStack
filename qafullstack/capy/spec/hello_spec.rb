

describe "Meu primeiro script", :hello do
  it "Visitar a página" do
    visit "/"
    expect(page.title).to eql "Training Wheels Protocol"
  end
end
