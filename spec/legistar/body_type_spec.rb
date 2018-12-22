RSpec.describe Legistar::BodyType do
  describe "BodyType" do
    before do
      @client = Legistar::BodyType.new(host: "mesa")
    end

    describe "#index" do
      it "return an array of BodyTypes, as hashes" do
        response = @client.index

        expect(response.class).to eq(Array)
        expect(response.first.class).to eq(Hash)
      end
    end

    describe "#get" do
      before do
        @body_type = @client.get("42") # TODO: Brittle
      end

      it "return a BodyType, as a hash" do
        expect(@body_type.class).to eq(Hash)
        expect(@body_type.keys).to include("BodyTypeId")
        expect(@body_type.keys).to include("BodyTypeGuid")
        expect(@body_type.keys).to include("BodyTypeLastModifiedUtc")
        expect(@body_type.keys).to include("BodyTypeRowVersion")
        expect(@body_type.keys).to include("BodyTypeName")
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
