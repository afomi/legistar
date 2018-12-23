RSpec.describe Legistar::Matter do
  describe "Matter" do
    before do
      @client = Legistar::Matter.new(host: "mesa")
    end

    describe "#index" do
      it "return an array of Matters, as hashes" do
        matters = @client.index
        expect(matters.class).to eq(Array)
        expect(matters.first.class).to eq(Hash)
      end
    end

    describe "#get" do
      before do
        @matter = @client.get("2379") # TODO: Brittle
      end

      it "return a Matter, as a hash" do
        expect(@matter.class).to eq(Hash)
        expect(@matter.keys).to include("MatterId")
        expect(@matter.keys).to include("MatterGuid")
        expect(@matter.keys).to include("MatterLastModifiedUtc")
        expect(@matter.keys).to include("MatterRowVersion")
        expect(@matter.keys).to include("MatterFile")
        expect(@matter.keys).to include("MatterName")
        expect(@matter.keys).to include("MatterTitle")
        expect(@matter.keys).to include("MatterTypeId")
        expect(@matter.keys).to include("MatterTypeName")
        expect(@matter.keys).to include("MatterStatusId")
        expect(@matter.keys).to include("MatterStatusName")
        expect(@matter.keys).to include("MatterBodyId")
        expect(@matter.keys).to include("MatterBodyName")
        expect(@matter.keys).to include("MatterIntroDate")
        expect(@matter.keys).to include("MatterAgendaDate")
        expect(@matter.keys).to include("MatterPassedDate")
        expect(@matter.keys).to include("MatterEnactmentDate")
        expect(@matter.keys).to include("MatterEnactmentNumber")
        expect(@matter.keys).to include("MatterRequester")
        expect(@matter.keys).to include("MatterNotes")
        expect(@matter.keys).to include("MatterVersion")
        expect(@matter.keys).to include("MatterText1")
        expect(@matter.keys).to include("MatterText2")
        expect(@matter.keys).to include("MatterText3")
        expect(@matter.keys).to include("MatterText4")
        expect(@matter.keys).to include("MatterText5")
        expect(@matter.keys).to include("MatterDate1")
        expect(@matter.keys).to include("MatterDate2")
        expect(@matter.keys).to include("MatterEXText1")
        expect(@matter.keys).to include("MatterEXText2")
        expect(@matter.keys).to include("MatterEXText3")
        expect(@matter.keys).to include("MatterEXText4")
        expect(@matter.keys).to include("MatterEXText5")
        expect(@matter.keys).to include("MatterEXText6")
        expect(@matter.keys).to include("MatterEXText7")
        expect(@matter.keys).to include("MatterEXText8")
        expect(@matter.keys).to include("MatterEXText9")
        expect(@matter.keys).to include("MatterEXText10")
        expect(@matter.keys).to include("MatterEXText11")
        expect(@matter.keys).to include("MatterEXDate1")
        expect(@matter.keys).to include("MatterEXDate2")
        expect(@matter.keys).to include("MatterEXDate3")
        expect(@matter.keys).to include("MatterEXDate4")
        expect(@matter.keys).to include("MatterEXDate5")
        expect(@matter.keys).to include("MatterEXDate6")
        expect(@matter.keys).to include("MatterEXDate7")
        expect(@matter.keys).to include("MatterEXDate8")
        expect(@matter.keys).to include("MatterEXDate9")
        expect(@matter.keys).to include("MatterEXDate10")
        expect(@matter.keys).to include("MatterAgiloftId")
        expect(@matter.keys).to include("MatterReference")
        expect(@matter.keys).to include("MatterRestrictViewViaWeb")
        expect(@matter.keys).to include("MatterReports")
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
