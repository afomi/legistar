RSpec.describe Legistar::Event do
  describe "Event" do
    before do
      @client = Legistar::Event.new(host: "mesa")
    end

    describe "#index" do
      it "return an array of Events, as hashes" do
        code_sections = @client.index
        expect(code_sections.class).to eq(Array)
        expect(code_sections.first.class).to eq(Hash)
      end
    end

    describe "#get" do
      before do
        @code_section = @client.get("1235") # TODO: Brittle
      end

      it "return a Event, as a hash" do
        expect(@code_section.class).to eq(Hash)
        expect(@code_section.keys).to include("EventId")
        expect(@code_section.keys).to include("EventGuid")
        expect(@code_section.keys).to include("EventLastModifiedUtc")
        expect(@code_section.keys).to include("EventRowVersion")
        expect(@code_section.keys).to include("EventBodyId")
        expect(@code_section.keys).to include("EventBodyName")
        expect(@code_section.keys).to include("EventDate")
        expect(@code_section.keys).to include("EventTime")
        expect(@code_section.keys).to include("EventVideoStatus")
        expect(@code_section.keys).to include("EventAgendaStatusId")
        expect(@code_section.keys).to include("EventAgendaStatusName")
        expect(@code_section.keys).to include("EventMinutesStatusId")
        expect(@code_section.keys).to include("EventMinutesStatusName")
        expect(@code_section.keys).to include("EventLocation")
        expect(@code_section.keys).to include("EventAgendaFile")
        expect(@code_section.keys).to include("EventMinutesFile")
        expect(@code_section.keys).to include("EventAgendaLastPublishedUTC")
        expect(@code_section.keys).to include("EventMinutesLastPublishedUTC")
        expect(@code_section.keys).to include("EventComment")
        expect(@code_section.keys).to include("EventVideoPath")
        expect(@code_section.keys).to include("EventInSiteURL")
        expect(@code_section.keys).to include("EventItems")
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
