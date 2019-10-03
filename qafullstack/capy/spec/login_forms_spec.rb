def login(user, password)
  visit "/login"

  fill_in "userId", with: user
  fill_in "password", with: password
  click_button "Login"
end

describe "Forms" do
  it "Login com Sucesso" do
    login("stark", "jarvis!")

    expect(find("#flash").visible?).to be true

    #expect(find("#flash").text).to include "Olá, Tony Stark. Você acessou a área logada!"
    expect(find("#flash")).to have_content "Olá, Tony Stark. Você acessou a área logada!"
  end

  it "senha incorreta" do
    login("stark", "jarvis")

    expect(find("#flash").visible?).to be true
    expect(find("#flash")).to have_content "Senha é invalida!"
  end

  it "usuário não cadastrado" do
    login("lucas", "teste")

    expect(find("#flash").visible?).to be true
    expect(find("#flash")).to have_content "O usuário informado não está cadastrado!"
  end
end
