RSpec.describe Legistar::MatterAttachment do
  describe "MatterAttachment" do
    before do
      @client = Legistar::MatterAttachment.new(host: "mesa")
      @matter_id = "2379"
    end

    describe "#index" do
      it "return an array of MatterAttachments, as hashes" do
        matter_attachments = @client.index(@matter_id)
        expect(matter_attachments.class).to eq(Array)
        expect(matter_attachments.first.class).to eq(Hash)
      end
    end

    describe "#get" do
      before do
        @matter_attachment = @client.get(@matter_id, 1062) # TODO: Brittle
      end

      it "return a Event, as a hash" do
        expect(@matter_attachment.class).to eq(Hash)
        expect(@matter_attachment.keys).to include("MatterAttachmentId")
        expect(@matter_attachment.keys).to include("MatterAttachmentGuid")
        expect(@matter_attachment.keys).to include("MatterAttachmentLastModifiedUtc")
        expect(@matter_attachment.keys).to include("MatterAttachmentRowVersion")
        expect(@matter_attachment.keys).to include("MatterAttachmentName")
        expect(@matter_attachment.keys).to include("MatterAttachmentHyperlink")
        expect(@matter_attachment.keys).to include("MatterAttachmentFileName")
        expect(@matter_attachment.keys).to include("MatterAttachmentMatterVersion")
        expect(@matter_attachment.keys).to include("MatterAttachmentIsHyperlink")
        expect(@matter_attachment.keys).to include("MatterAttachmentBinary")
        expect(@matter_attachment.keys).to include("MatterAttachmentIsSupportingDocument")
        expect(@matter_attachment.keys).to include("MatterAttachmentShowOnInternetPage")
        expect(@matter_attachment.keys).to include("MatterAttachmentIsMinuteOrder")
        expect(@matter_attachment.keys).to include("MatterAttachmentIsBoardLetter")
        expect(@matter_attachment.keys).to include("MatterAttachmentAgiloftId")
        expect(@matter_attachment.keys).to include("MatterAttachmentDescription")
        expect(@matter_attachment.keys).to include("MatterAttachmentPrintWithReports")
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
