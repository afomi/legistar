RSpec.describe Legistar::RollCall do
  describe "RollCall" do
    before do
      @client = Legistar::RollCall.new(host: "mesa")
      @event_id = 20901
    end

    describe "#index" do
      it "return an array of RollCalls, as hashes" do
        roll_calls = @client.index(@event_id)
        expect(roll_calls.class).to eq(Array)
        expect(roll_calls.first.class).to eq(Hash)
      end
    end

    describe "#get" do
      before do
        @roll_call = @client.get(@event_id, "4026") # TODO: Brittle
      end

      it "return a RollCall, as a hash" do
        expect(@roll_call.class).to eq(Hash)
        expect(@roll_call.keys).to include("RollCallId")
        expect(@roll_call.keys).to include("RollCallGuid")
        expect(@roll_call.keys).to include("RollCallLastModifiedUtc")
        expect(@roll_call.keys).to include("RollCallRowVersion")
        expect(@roll_call.keys).to include("RollCallPersonId")
        expect(@roll_call.keys).to include("RollCallPersonName")
        expect(@roll_call.keys).to include("RollCallValueId")
        expect(@roll_call.keys).to include("RollCallValueName")
        expect(@roll_call.keys).to include("RollCallSort")
        expect(@roll_call.keys).to include("RollCallResult")
        expect(@roll_call.keys).to include("RollCallEventItemId")
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
