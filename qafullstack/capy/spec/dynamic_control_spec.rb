
describe "Dynamic Conrtrol", :dc do
  before(:each) do
    visit "/dynamic_controls"
  end

  it "Quando habilita o campo" do

    # quando tem a propriedade disabled true, o campo esta desabilitado
    #quando não tem a proprieadade disabled o campo esta habilitado
    res = page.has_field? "movie", disabled: true
    puts res
    click_button "Habilita"
    #sleep 5
    res = page.has_field? "movie", disabled: false
    puts res
  end
end
