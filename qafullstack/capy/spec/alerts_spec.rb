

describe "Alertas de JS", :alerts do
  before(:each) do
    visit "/javascript_alerts"
  end

  it "Alerta" do
    click_button "Alerta"

    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql "Isto é uma mensagem de alerta"
  end

  it "Sim Confirma" do
    click_button "Confirma"

    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql "E ai confirma?"

    page.driver.browser.switch_to.alert.accept
    expect(page).to have_content "Mensagem confirmada"
  end

  it "Não Confirma" do
    click_button "Confirma"

    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql "E ai confirma?"

    page.driver.browser.switch_to.alert.dismiss
    expect(page).to have_content "Mensagem não confirmada"
  end

  it "Accept Prompt", :prompt do
    accept_prompt(with: "Lucas") do
      click_button "Prompt"
      sleep 2
    end
    expect(page).to have_content "Olá, Lucas"
  end

  it "Dismiss Prompt", :prompt2 do
    dismiss_prompt(with: "") do
      click_button "Prompt"
      sleep 2
    end
    expect(page).to have_content "Olá, null"
  end
end
