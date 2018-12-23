RSpec.describe Legistar::EventItem do
  describe "EventItem" do
    before do
      @client = Legistar::EventItem.new(host: "mesa", event_id: "1235")
    end

    describe "#index" do
      it "return an array of EventItems, as hashes" do
        event_items = @client.index
        expect(event_items.class).to eq(Array)
        expect(event_items.first.class).to eq(Hash)
      end
    end

    describe "#get" do
      before do
        @event_item = @client.get("20901") # TODO: Brittle
      end

      it "return a EventItem, as a hash" do
        expect(@event_item.class).to eq(Hash)
        expect(@event_item.keys).to include("EventItemId")
        expect(@event_item.keys).to include("EventItemGuid")
        expect(@event_item.keys).to include("EventItemLastModifiedUtc")
        expect(@event_item.keys).to include("EventItemRowVersion")
        expect(@event_item.keys).to include("EventItemEventId")
        expect(@event_item.keys).to include("EventItemAgendaSequence")
        expect(@event_item.keys).to include("EventItemMinutesSequence")
        expect(@event_item.keys).to include("EventItemAgendaNumber")
        expect(@event_item.keys).to include("EventItemVideo")
        expect(@event_item.keys).to include("EventItemVideoIndex")
        expect(@event_item.keys).to include("EventItemVersion")
        expect(@event_item.keys).to include("EventItemAgendaNote")
        expect(@event_item.keys).to include("EventItemMinutesNote")
        expect(@event_item.keys).to include("EventItemActionId")
        expect(@event_item.keys).to include("EventItemActionName")
        expect(@event_item.keys).to include("EventItemActionText")
        expect(@event_item.keys).to include("EventItemPassedFlag")
        expect(@event_item.keys).to include("EventItemPassedFlagName")
        expect(@event_item.keys).to include("EventItemRollCallFlag")
        expect(@event_item.keys).to include("EventItemFlagExtra")
        expect(@event_item.keys).to include("EventItemTitle")
        expect(@event_item.keys).to include("EventItemTally")
        expect(@event_item.keys).to include("EventItemAccelaRecordId")
        expect(@event_item.keys).to include("EventItemConsent")
        expect(@event_item.keys).to include("EventItemMoverId")
        expect(@event_item.keys).to include("EventItemMover")
        expect(@event_item.keys).to include("EventItemSeconderId")
        expect(@event_item.keys).to include("EventItemSeconder")
        expect(@event_item.keys).to include("EventItemMatterId")
        expect(@event_item.keys).to include("EventItemMatterGuid")
        expect(@event_item.keys).to include("EventItemMatterFile")
        expect(@event_item.keys).to include("EventItemMatterName")
        expect(@event_item.keys).to include("EventItemMatterType")
        expect(@event_item.keys).to include("EventItemMatterStatus")
        expect(@event_item.keys).to include("EventItemMatterAttachments")
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
