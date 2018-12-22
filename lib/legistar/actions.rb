module Legistar
  class Actions
    include HTTParty
    base_uri 'https://webapi.legistar.com'

    def initialize(host:)
      @host = host
    end

    # Example Response
    #
    # {
    #   "ActionId"=>367,
    #   "ActionGuid"=>nil,
    #   "ActionLastModifiedUtc"=>"2014-05-24T04:15:17.893",
    #   "ActionRowVersion"=>"AAAAAAAeM4E=",
    #   "ActionName"=>"Adopted As Amended",
    #   "ActionActiveFlag"=>1,
    #   "ActionUsedFlag"=>0
    # }
    #
    def index
      response = self.class.get("/v1/#{@host}/Actions")
      actions = response.to_a
    end

    def get(id)
      response = self.class.get("/v1/#{@host}/Actions/#{id}")
      response.to_h
    end

    def create(options = {})
      response = self.class.post("/v1/#{@host}/Actions/", options)
    end

    def update(id, options = {})
      response = self.class.put("/v1/#{@host}/Actions/#{id}", options)
    end

    def destroy(id)
      response = self.class.delete("/v1/#{@host}/Actions/#{id}")
    end
  end
end
