RSpec.describe Legistar::Vote do
  describe "Vote" do
    before do
      @client = Legistar::Vote.new(host: "mesa")
      @event_item_id = "21138"
    end

    describe "#index" do
      it "return an array of Votes, as hashes" do
        votes = @client.index(@event_item_id)
        expect(votes.class).to eq(Array)
        expect(votes.first.class).to eq(Hash)
      end
    end

    describe "#get" do
      before do
        @vote = @client.get(@event_item_id, "5437") # TODO: Brittle
      end

      it "return a Vote, as a hash" do
        expect(@vote.class).to eq(Hash)
        expect(@vote.keys).to include("VoteId")
        expect(@vote.keys).to include("VoteGuid")
        expect(@vote.keys).to include("VoteLastModifiedUtc")
        expect(@vote.keys).to include("VoteRowVersion")
        expect(@vote.keys).to include("VotePersonId")
        expect(@vote.keys).to include("VotePersonName")
        expect(@vote.keys).to include("VoteValueId")
        expect(@vote.keys).to include("VoteValueName")
        expect(@vote.keys).to include("VoteSort")
        expect(@vote.keys).to include("VoteResult")
        expect(@vote.keys).to include("VoteEventItemId")
      end
    end

    xdescribe "#get_for_person" do
    end

    xdescribe "#create" do
    end

    xdescribe "#update" do
    end

    xdescribe "#destroy" do
    end
  end
end
