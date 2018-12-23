RSpec.describe Legistar::Index do
  describe "Index" do
    before do
      @client = Legistar::Index.new(host: "mesa")
    end

    describe "#index" do
      it "return an array of Indexes, as hashes" do
        indexes = @client.index
        expect(indexes.class).to eq(Array)
        expect(indexes.first.class).to eq(Hash)
      end
    end

    describe "#get" do
      before do
        @index = @client.get("198") # TODO: Brittle
      end

      it "return a Event, as a hash" do
        expect(@index.class).to eq(Hash)
        expect(@index.keys).to include("IndexId")
        expect(@index.keys).to include("IndexGuid")
        expect(@index.keys).to include("IndexLastModifiedUtc")
        expect(@index.keys).to include("IndexRowVersion")
        expect(@index.keys).to include("IndexName")
        expect(@index.keys).to include("IndexName")
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
