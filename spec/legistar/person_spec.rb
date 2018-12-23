RSpec.describe Legistar::Person do
  describe "Person" do
    before do
      @client = Legistar::Person.new(host: "mesa")
    end

    describe "#index" do
      it "return an array of People, as hashes" do
        code_sections = @client.index
        expect(code_sections.class).to eq(Array)
        expect(code_sections.first.class).to eq(Hash)
      end
    end

    describe "#get" do
      before do
        @person = @client.get("120") # TODO: Brittle
      end

      it "return a Event, as a hash" do
        expect(@person.class).to eq(Hash)
        expect(@person.keys).to include("PersonId")
        expect(@person.keys).to include("PersonGuid")
        expect(@person.keys).to include("PersonLastModifiedUtc")
        expect(@person.keys).to include("PersonRowVersion")
        expect(@person.keys).to include("PersonFirstName")
        expect(@person.keys).to include("PersonLastName")
        expect(@person.keys).to include("PersonFullName")
        expect(@person.keys).to include("PersonActiveFlag")
        expect(@person.keys).to include("PersonUsedSponsorFlag")
        expect(@person.keys).to include("PersonAddress1")
        expect(@person.keys).to include("PersonCity1")
        expect(@person.keys).to include("PersonState1")
        expect(@person.keys).to include("PersonZip1")
        expect(@person.keys).to include("PersonPhone")
        expect(@person.keys).to include("PersonFax")
        expect(@person.keys).to include("PersonEmail")
        expect(@person.keys).to include("PersonWWW")
        expect(@person.keys).to include("PersonAddress2")
        expect(@person.keys).to include("PersonCity2")
        expect(@person.keys).to include("PersonState2")
        expect(@person.keys).to include("PersonZip2")
        expect(@person.keys).to include("PersonPhone2")
        expect(@person.keys).to include("PersonFax2")
        expect(@person.keys).to include("PersonEmail2")
        expect(@person.keys).to include("PersonWWW2")
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
