module Legistar
  class EventItem
    include HTTParty
    base_uri 'https://webapi.legistar.com'

    def initialize(host:, event_id:)
      @host = host
      @event_id = event_id
    end

    # Example Response
    #
    # {
    #   "EventItemId"=>20901,
    #   "EventItemGuid"=>"B49E7B78-7E75-47BC-B8D3-6A26B7EEA757",
    #   "EventItemLastModifiedUtc"=>"2014-05-24T04:15:15.547",
    #   "EventItemRowVersion"=>"AAAAAAAO8dE=",
    #   "EventItemEventId"=>1235,
    #   "EventItemAgendaSequence"=>1,
    #   "EventItemMinutesSequence"=>2,
    #   "EventItemAgendaNumber"=>nil,
    #   "EventItemVideo"=>nil,
    #   "EventItemVideoIndex"=>nil,
    #   "EventItemVersion"=>nil,
    #   "EventItemAgendaNote"=>nil,
    #   "EventItemMinutesNote"=>nil,
    #   "EventItemActionId"=>nil,
    #   "EventItemActionName"=>nil,
    #   "EventItemActionText"=>nil,
    #   "EventItemPassedFlag"=>nil,
    #   "EventItemPassedFlagName"=>nil,
    #   "EventItemRollCallFlag"=>1,
    #   "EventItemFlagExtra"=>nil,
    #   "EventItemTitle"=>"Roll Call",
    #   "EventItemTally"=>nil,
    #   "EventItemAccelaRecordId"=>nil,
    #   "EventItemConsent"=>0,
    #   "EventItemMoverId"=>nil,
    #   "EventItemMover"=>nil,
    #   "EventItemSeconderId"=>nil,
    #   "EventItemSeconder"=>nil,
    #   "EventItemMatterId"=>nil,
    #   "EventItemMatterGuid"=>nil,
    #   "EventItemMatterFile"=>nil,
    #   "EventItemMatterName"=>nil,
    #   "EventItemMatterType"=>nil,
    #   "EventItemMatterStatus"=>nil,
    #   "EventItemMatterAttachments"=>[]
    # }
    #
    def index
      response = self.class.get("/v1/#{@host}/Events/#{@event_id}/EventItems")
      actions = response.to_a
    end

    def get(id)
      response = self.class.get("/v1/#{@host}/Events/#{@event_id}/EventItems/#{id}")
      response.to_h
    end

    def create(options = {})
      response = self.class.post("/v1/#{@host}/Events/#{@event_id}/EventItems/", options)
    end

    def update(id, options = {})
      response = self.class.put("/v1/#{@host}/Events/#{@event_id}/EventItems/#{id}", options)
    end

    def destroy(id)
      response = self.class.delete("/v1/#{@host}/Events/#{@event_id}/EventItems/#{id}")
    end
  end
end
