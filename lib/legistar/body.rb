module Legistar
  class Body
    include HTTParty
    base_uri 'https://webapi.legistar.com'

    def initialize(host:)
      @host = host
    end

    # Example Response
    #
    # {
    #   "BodyId"=>138,
    #   "BodyGuid"=>"C41C40DF-D8C2-444E-B2A8-4FC7D4B1A9F8",
    #   "BodyLastModifiedUtc"=>"2014-05-24T04:15:17.663",
    #   "BodyRowVersion"=>"AAAAAAAmn0Y=",
    #   "BodyName"=>"City Council",
    #   "BodyTypeId"=>42,
    #   "BodyTypeName"=>"City Council",
    #   "BodyMeetFlag"=>1,
    #   "BodyActiveFlag"=>1,
    #   "BodySort"=>999,
    #   "BodyDescription"=>"",
    #   "BodyContactNameId"=>nil,
    #   "BodyContactFullName"=>nil,
    #   "BodyContactPhone"=>nil,
    #   "BodyContactEmail"=>nil,
    #   "BodyUsedControlFlag"=>0,
    #   "BodyNumberOfMembers"=>0,
    #   "BodyUsedActingFlag"=>0,
    #   "BodyUsedTargetFlag"=>0,
    #   "BodyUsedSponsorFlag"=>0
    # }
    #
    def index
      response = self.class.get("/v1/#{@host}/Bodies")
      actions = response.to_a
    end

    def get(id)
      response = self.class.get("/v1/#{@host}/Bodies/#{id}")
      response.to_h
    end

    def create(options = {})
      response = self.class.post("/v1/#{@host}/Bodies/", options)
    end

    def update(id, options = {})
      response = self.class.put("/v1/#{@host}/Bodies/#{id}", options)
    end

    def destroy(id)
      response = self.class.delete("/v1/#{@host}/Bodies/#{id}")
    end
  end
end
