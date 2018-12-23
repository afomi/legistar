module Legistar
  class Vote
    include HTTParty
    base_uri 'https://webapi.legistar.com'

    def initialize(host:)
      @host = host
    end

    # Example Response
    #
    # {
    #   "VoteId"=>5437,
    #   "VoteGuid"=>"18FB4C3E-1829-4A68-BEA9-7A97EA02F166",
    #   "VoteLastModifiedUtc"=>"2014-05-24T04:15:17.367",
    #   "VoteRowVersion"=>"AAAAAAAOvRU=",
    #   "VotePersonId"=>173,
    #   "VotePersonName"=>"Scott Smith",
    #   "VoteValueId"=>16,
    #   "VoteValueName"=>"Aye",
    #   "VoteSort"=>1,
    #   "VoteResult"=>1,
    #   "VoteEventItemId"=>21138
    # }
    #
    def index(event_item_id)
      response = self.class.get("/v1/#{@host}/EventItems/#{event_item_id}/Votes")
      response.to_a
    end

    def get(event_item_id, id)
      response = self.class.get("/v1/#{@host}/EventItems/#{event_item_id}/Votes/#{id}")
      response.to_h
    end

    def get_for_person(person_id)
      response = self.class.get("/v1/#{@host}/Persons/#{person_id}/Votes/")
      response.to_h
    end

    def create(event_item_id, options = {})
      response = self.class.post("/v1/#{@host}/EventItems/#{event_item_id}/Votes/", options)
    end

    def update(event_item_id, id, options = {})
      response = self.class.put("/v1/#{@host}/EventItems/#{event_item_id}/Votes/#{id}", options)
    end

    def destroy(event_item_id, id)
      response = self.class.delete("/v1/#{@host}/EventItems/#{event_item_id}/Votes/#{id}")
    end
  end
end
