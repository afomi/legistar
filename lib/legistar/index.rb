module Legistar
  class Index
    include HTTParty
    base_uri 'https://webapi.legistar.com'

    def initialize(host:)
      @host = host
    end

    # Example Response
    #
    # {
    #   "IndexId"=>198,
    #   "IndexGuid"=>"18B9EAE1-951B-4E52-B9F9-36BDD9044D89",
    #   "IndexLastModifiedUtc"=>"2014-05-24T04:15:18.867",
    #   "IndexRowVersion"=>"AAAAAAAIGYU=",
    #   "IndexName"=>"Economic Development",
    #   "IndexActiveFlag"=>1,
    #   "IndexUsedFlag"=>0
    # }
    #
    def index
      response = self.class.get("/v1/#{@host}/Indexes")
      actions = response.to_a
    end

    def get(id)
      response = self.class.get("/v1/#{@host}/Indexes/#{id}")
      response.to_h
    end

    def create(options = {})
      response = self.class.post("/v1/#{@host}/Indexes/", options)
    end

    def update(id, options = {})
      response = self.class.put("/v1/#{@host}/Indexes/#{id}", options)
    end

    def destroy(id)
      response = self.class.delete("/v1/#{@host}/Indexes/#{id}")
    end
  end
end
