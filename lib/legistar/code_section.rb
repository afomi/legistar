module Legistar
  class CodeSection
    include HTTParty
    base_uri 'https://webapi.legistar.com'

    def initialize(host:)
      @host = host
    end

    # Example Response
    #
    # {
    #   "CodeSectionId"=>38,
    #   "CodeSectionGuid"=>"A24F2163-A67F-47EE-860C-EDA29BACFE37",
    #   "CodeSectionLastModifiedUtc"=>"2014-05-24T04:15:19.107",
    #   "CodeSectionRowVersion"=>"AAAAAAAFsMc=",
    #   "CodeSectionNumber"=>"11.222",
    #   "CodeSectionName"=>"Water ",
    #   "CodeSectionActiveFlag"=>1,
    #   "CodeSectionUsedFlag"=>0
    # }
    #
    def index
      response = self.class.get("/v1/#{@host}/CodeSections")
      actions = response.to_a
    end

    def get(id)
      response = self.class.get("/v1/#{@host}/CodeSections/#{id}")
      response.to_h
    end

    def create(options = {})
      response = self.class.post("/v1/#{@host}/CodeSections/", options)
    end

    def update(id, options = {})
      response = self.class.put("/v1/#{@host}/CodeSections/#{id}", options)
    end

    def destroy(id)
      response = self.class.delete("/v1/#{@host}/CodeSections/#{id}")
    end
  end
end
