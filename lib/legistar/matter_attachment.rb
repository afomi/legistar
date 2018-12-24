module Legistar
  class MatterAttachment
    include HTTParty
    base_uri 'https://webapi.legistar.com'

    def initialize(host:)
      @host = host
    end

    # Example Response
    #
    # {
    #   "MatterAttachmentId"=>1062,
    #   "MatterAttachmentGuid"=>"4F49DE1C-162D-4658-95E0-AFADBE846929",
    #   "MatterAttachmentLastModifiedUtc"=>"2014-05-24T04:15:18.457",
    #   "MatterAttachmentRowVersion"=>"AAAAAAAWmGY=",
    #   "MatterAttachmentName"=>"Appointments",
    #   "MatterAttachmentHyperlink"=>
    #   "http://legistar1.granicus.com/Mesa/attachments/faeafcbf-1d6b-4393-844b-20048a7e4fc6.pdf",
    #   "MatterAttachmentFileName"=>"faeafcbf-1d6b-4393-844b-20048a7e4fc6.pdf",
    #   "MatterAttachmentMatterVersion"=>"0",
    #   "MatterAttachmentIsHyperlink"=>false,
    #   "MatterAttachmentBinary"=>nil,
    #   "MatterAttachmentIsSupportingDocument"=>false,
    #   "MatterAttachmentShowOnInternetPage"=>true,
    #   "MatterAttachmentIsMinuteOrder"=>false,
    #   "MatterAttachmentIsBoardLetter"=>false,
    #   "MatterAttachmentAgiloftId"=>0,
    #   "MatterAttachmentDescription"=>nil,
    #   "MatterAttachmentPrintWithReports"=>true
    # }
    #
    def index(matter_id)
      response = self.class.get("/v1/#{@host}/Matters/#{matter_id}/Attachments")
      response.to_a
    end

    def get(matter_id, id)
      response = self.class.get("/v1/#{@host}/Matters/#{matter_id}/Attachments/#{id}")
      response.to_h
    end

    def get_file(matter_id, id)
      response = self.class.get("/v1/#{@host}/Matters/#{matter_id}/Attachments/#{id}")
      response.to_h
    end

    def create(matter_id, options = {})
      response = self.class.post("/v1/#{@host}/Matters/#{matter_id}/Attachments/", options)
    end

    def update(matter_id, id, options = {})
      response = self.class.put("/v1/#{@host}/Matters/#{matter_id}/Attachments/#{id}", options)
    end

    def destroy(matter_id, id)
      response = self.class.delete("/v1/#{@host}/Matters/#{matter_id}/Attachments/#{id}")
    end
  end
end
