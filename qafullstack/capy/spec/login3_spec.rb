
describe "Login com Cadastro", :login3 do
  before(:each) do
    visit "/access"
  end

  it "Login com sucesso" do
    within("#login") do
      find("input[name=username]").set "stark"
      find("input[name=password]").set "jarvis!"
      click_button "Entrar"
    end

    expect(find("#flash")).to have_content "Olá, Tony Stark. Você acessou a área logada!"
  end

  it "Cadastro com sucesso" do
    within("#signup") do
      find("input[name=username]").set "lucas"
      find("input[name=password]").set "lucas"
      click_link "Criar Conta"
    end

    expect(page).to have_content "Dados enviados. Aguarde a aprovação do seu cadastro!"
  end
end
