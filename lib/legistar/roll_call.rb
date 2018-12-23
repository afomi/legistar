module Legistar
  class RollCall
    include HTTParty
    base_uri 'https://webapi.legistar.com'

    def initialize(host:)
      @host = host
    end

    # Example Response
    #
    # {
    #   "RollCallId"=>4026,
    #   "RollCallGuid"=>nil,
    #   "RollCallLastModifiedUtc"=>"2014-05-24T04:15:18.297",
    #   "RollCallRowVersion"=>"AAAAAAAOw0s=",
    #   "RollCallPersonId"=>173,
    #   "RollCallPersonName"=>"Scott Smith",
    #   "RollCallValueId"=>18,
    #   "RollCallValueName"=>"Present",
    #   "RollCallSort"=>1,
    #   "RollCallResult"=>0,
    #   "RollCallEventItemId"=>20901
    # }
    #
    def index(event_id)
      response = self.class.get("/v1/#{@host}/EventItems/#{event_id}/RollCalls")
      actions = response.to_a
    end

    def get(event_id, id)
      response = self.class.get("/v1/#{@host}/EventItems/#{event_id}/RollCalls/#{id}")
      response.to_h
    end

    def get_for_person(person_id)
      response = self.class.get("/v1/#{@host}/Persons/#{person_id}/RollCalls/")
      response.to_h
    end

    def create(options = {})
      response = self.class.post("/v1/#{@host}/EventItems/#{event_id}/RollCalls/", options)
    end

    def update(id, options = {})
      response = self.class.put("/v1/#{@host}/EventItems/#{event_id}/RollCalls/#{id}", options)
    end

    def destroy(id)
      response = self.class.delete("/v1/#{@host}/EventItems/#{event_id}/RollCalls/#{id}")
    end
  end
end
