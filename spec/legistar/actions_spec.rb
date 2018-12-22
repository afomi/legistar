RSpec.describe Legistar::Actions do
  describe "Actions" do
    before do
      @actions_client = Legistar::Actions.new(host: "mesa")
    end

    describe "#index" do
      it "return an array of Actions, as hashes" do
        actions = @actions_client.index

        expect(actions.class).to eq(Array)
        expect(actions.first.class).to eq(Hash)
      end
    end

    describe "#get" do
      before do
        @action = @actions_client.get("362") # TODO: Brittle
      end

      it "return an Action, as a hash" do
        expect(@action.class).to eq(Hash)
        expect(@action.keys).to include("ActionId")
        expect(@action.keys).to include("ActionGuid")
        expect(@action.keys).to include("ActionLastModifiedUtc")
        expect(@action.keys).to include("ActionName")
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
