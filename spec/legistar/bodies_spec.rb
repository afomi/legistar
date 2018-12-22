RSpec.describe Legistar::Bodies do
  describe "Bodies" do
    before do
      @bodies_client = Legistar::Bodies.new(host: "mesa")
    end

    describe "#index" do
      it "return an array of Bodies, as hashes" do
        bodies = @bodies_client.index

        expect(bodies.class).to eq(Array)
        expect(bodies.first.class).to eq(Hash)
      end
    end

    describe "#get" do
      before do
        @body = @bodies_client.get("138") # TODO: Brittle
      end

      it "return a Body, as a hash" do
        expect(@body.class).to eq(Hash)
        expect(@body.keys).to include("BodyId")
        expect(@body.keys).to include("BodyGuid")
        expect(@body.keys).to include("BodyName")
        expect(@body.keys).to include("BodyDescription")
        expect(@body.keys).to include("BodyLastModifiedUtc")
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
