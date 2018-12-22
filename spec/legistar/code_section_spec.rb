RSpec.describe Legistar::CodeSection do
  describe "CodeSection" do
    before do
      @client = Legistar::CodeSection.new(host: "mesa")
    end

    describe "#index" do
      it "return an array of CodeSections, as hashes" do
        code_sections = @client.index
        expect(code_sections.class).to eq(Array)
        expect(code_sections.first.class).to eq(Hash)
      end
    end

    describe "#get" do
      before do
        @code_section = @client.get("38") # TODO: Brittle
      end

      it "return a CodeSection, as a hash" do
        expect(@code_section.class).to eq(Hash)
        expect(@code_section.keys).to include("CodeSectionId")
        expect(@code_section.keys).to include("CodeSectionGuid")
        expect(@code_section.keys).to include("CodeSectionLastModifiedUtc")
        expect(@code_section.keys).to include("CodeSectionRowVersion")
        expect(@code_section.keys).to include("CodeSectionNumber")
        expect(@code_section.keys).to include("CodeSectionName")
        expect(@code_section.keys).to include("CodeSectionActiveFlag")
        expect(@code_section.keys).to include("CodeSectionUsedFlag")
      end
    end

    xdescribe "#create" do
    end

    xdescribe "#update" do
    end

    xdescribe "#destroy" do
    end
  end
end
