
describe "Alterando janelas", :windows do
  before(:each) do
    visit "/windows"
  end

  it "Nova janela" do
    nova_janela = window_opened_by { click_link "Clique aqui" }

    within_window -> { page.title == "Nova Janela" } do
      expect(page).to have_content 'Aqui temos uma nova janela \o/'
    end
    sleep 2
    nova_janela.close
    sleep 2
    expect(nova_janela.closed?).to be true
  end
end
