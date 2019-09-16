
describe "Select2", :select2 do
  describe("Single", :single) do
    before(:each) do
      visit "/apps/select2/single.html"
    end

    it "Seleciona ator por nome" do
      find(".select2-selection--single").click
      find(".select2-results__option", text: "Adam Sandler").click
      expect(find(".select2-selection__rendered").text).to eql "Adam Sandler"
    end

    it "Busca e clica no ator" do
      find(".select2-selection--single").click
      find(".select2-search__field").set "Chris Rock"
      find(".select2-results__option").click
      expect(find(".select2-selection__rendered").text).to eql "Chris Rock"
    end

    it "Seleciona qualquer ator" do
      find(".select2-selection--single").click
      find_all(".select2-results__option").sample.click
    end
  end

  describe("Multiple", :multiple) do
    before(:each) do
      visit "/apps/select2/multi.html"
    end

    def seleciona(ator)
      find(".select2-selection--multiple").click
      find(".select2-search__field").set ator
      find(".select2-results__options").click
    end

    it "Seleciona atores" do
      atores = ["Jim Carrey", "Owen Wilson", "Kevin James"]

      atores.each do |a|
        seleciona(a)
      end
      sleep 2
    end
  end
end
