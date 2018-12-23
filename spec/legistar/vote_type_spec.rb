RSpec.describe Legistar::VoteType do
  describe "VoteType" do
    before do
      @client = Legistar::VoteType.new(host: "mesa")
    end

    describe "#index" do
      it "return an array of VoteTypes, as hashes" do
        vote_types = @client.index
        expect(vote_types.class).to eq(Array)
        expect(vote_types.first.class).to eq(Hash)
      end
    end

    describe "#get" do
      before do
        @vote_type = @client.get("16") # TODO: Brittle
      end

      it "return a VoteType, as a hash" do
        expect(@vote_type.class).to eq(Hash)
        expect(@vote_type.keys).to include("VoteTypeId")
        expect(@vote_type.keys).to include("VoteTypeGuid")
        expect(@vote_type.keys).to include("VoteTypeLastModifiedUtc")
        expect(@vote_type.keys).to include("VoteTypeRowVersion")
        expect(@vote_type.keys).to include("VoteTypeName")
        expect(@vote_type.keys).to include("VoteTypePluralName")
        expect(@vote_type.keys).to include("VoteTypeUsedFor")
        expect(@vote_type.keys).to include("VoteTypeResult")
        expect(@vote_type.keys).to include("VoteTypeSort")
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
