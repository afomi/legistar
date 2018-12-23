module Legistar
  class Person
    include HTTParty
    base_uri 'https://webapi.legistar.com'

    def initialize(host:)
      @host = host
    end

    # Example Response
    #
    # {
    #   "PersonId"=>120,
    #   "PersonGuid"=>"BADB8618-B857-4657-B42B-025A865E2FB8",
    #   "PersonLastModifiedUtc"=>"2014-05-24T04:15:16.213",
    #   "PersonRowVersion"=>"AAAAAABM1G0=",
    #   "PersonFirstName"=>"",
    #   "PersonLastName"=>"Daystar",
    #   "PersonFullName"=>"Daystar",
    #   "PersonActiveFlag"=>1,
    #   "PersonUsedSponsorFlag"=>0,
    #   "PersonAddress1"=>"",
    #   "PersonCity1"=>nil,
    #   "PersonState1"=>nil,
    #   "PersonZip1"=>nil,
    #   "PersonPhone"=>"",
    #   "PersonFax"=>"",
    #   "PersonEmail"=>"ats@granicus.com",
    #   "PersonWWW"=>"",
    #   "PersonAddress2"=>nil,
    #   "PersonCity2"=>nil,
    #   "PersonState2"=>nil,
    #   "PersonZip2"=>nil,
    #   "PersonPhone2"=>nil,
    #   "PersonFax2"=>nil,
    #   "PersonEmail2"=>nil,
    #   "PersonWWW2"=>nil
    # }
    #
    def index
      response = self.class.get("/v1/#{@host}/Persons")
      actions = response.to_a
    end

    def get(id)
      response = self.class.get("/v1/#{@host}/Persons/#{id}")
      response.to_h
    end

    def create(options = {})
      response = self.class.post("/v1/#{@host}/Persons/", options)
    end

    def update(id, options = {})
      response = self.class.put("/v1/#{@host}/Persons/#{id}", options)
    end

    def destroy(id)
      response = self.class.delete("/v1/#{@host}/Persons/#{id}")
    end
  end
end
