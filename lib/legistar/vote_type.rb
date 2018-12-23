module Legistar
  class VoteType
    include HTTParty
    base_uri 'https://webapi.legistar.com'

    def initialize(host:)
      @host = host
    end

    # Example Response
    #
    # {
    #   "VoteTypeId"=>16,
    #   "VoteTypeGuid"=>"EB12A09A-1AD1-4FF8-B6FA-7FFA2C647E07",
    #   "VoteTypeLastModifiedUtc"=>"2014-05-24T04:15:16",
    #   "VoteTypeRowVersion"=>"AAAAAAAFuwU=",
    #   "VoteTypeName"=>"Aye",
    #   "VoteTypePluralName"=>"Ayes",
    #   "VoteTypeUsedFor"=>2,
    #   "VoteTypeResult"=>1,
    #   "VoteTypeSort"=>1
    # }
    #
    def index
      response = self.class.get("/v1/#{@host}/VoteTypes")
      actions = response.to_a
    end

    def get(id)
      response = self.class.get("/v1/#{@host}/VoteTypes/#{id}")
      response.to_h
    end

    def create(options = {})
      response = self.class.post("/v1/#{@host}/VoteTypes/", options)
    end

    def update(id, options = {})
      response = self.class.put("/v1/#{@host}/VoteTypes/#{id}", options)
    end

    def destroy(id)
      response = self.class.delete("/v1/#{@host}/VoteTypes/#{id}")
    end
  end
end
