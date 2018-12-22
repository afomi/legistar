module Legistar
  class BodyType
    include HTTParty
    base_uri 'https://webapi.legistar.com'

    def initialize(host:)
      @host = host
    end

    # Example Response
    #
    # {
    # "BodyTypeId"=>42,
    # "BodyTypeGuid"=>"B3C517AA-98B9-44BF-A3DE-7B9E8B4ACB5A",
    # "BodyTypeLastModifiedUtc"=>"2014-05-24T04:15:18.647",
    # "BodyTypeRowVersion"=>"AAAAAAA0AeY=",
    # "BodyTypeName"=>"City Council"
    # }
    def index
      response = self.class.get("/v1/#{@host}/BodyTypes")
      actions = response.to_a
    end

    def get(id)
      response = self.class.get("/v1/#{@host}/BodyTypes/#{id}")
      response.to_h
    end

    def create(options = {})
      response = self.class.post("/v1/#{@host}/BodyTypes/", options)
    end

    def update(id, options = {})
      response = self.class.put("/v1/#{@host}/BodyTypes/#{id}", options)
    end

    def destroy(id)
      response = self.class.delete("/v1/#{@host}/BodyTypes/#{id}")
    end
  end
end
