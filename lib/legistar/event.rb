module Legistar
  class Event
    include HTTParty
    base_uri 'https://webapi.legistar.com'

    def initialize(host:)
      @host = host
    end

    # Example Response
    #
    # {
    #   "EventId"=>1235,
    #   "EventGuid"=>"A53ED5E3-A39C-4E65-A014-93CD2DA74A6D",
    #   "EventLastModifiedUtc"=>"2014-05-24T04:15:15.08",
    #   "EventRowVersion"=>"AAAAAAAPU0I=",
    #   "EventBodyId"=>138,
    #   "EventBodyName"=>"City Council",
    #   "EventDate"=>"2010-09-27T00:00:00",
    #   "EventTime"=>"5:45 PM",
    #   "EventVideoStatus"=>"Public",
    #   "EventAgendaStatusId"=>13,
    #   "EventAgendaStatusName"=>"Final",
    #   "EventMinutesStatusId"=>14,
    #   "EventMinutesStatusName"=>"Action Results",
    #   "EventLocation"=>"Council Chambers - Upper Level",
    #   "EventAgendaFile"=>nil,
    #   "EventMinutesFile"=>nil,
    #   "EventAgendaLastPublishedUTC"=>"2010-09-23T22:57:31.397",
    #   "EventMinutesLastPublishedUTC"=>"2010-10-06T21:41:29.127",
    #   "EventComment"=>nil,
    #   "EventVideoPath"=>"http://www.mesachannel11.com/vod.php?show=695&start=sl",
    #   "EventInSiteURL"=>"https://mesa.legistar.com/MeetingDetail.aspx?LEGID=1235&GID=107&G=6D482A9C-B912-4765-B79B-550C367FA729",
    #   "EventItems"=>[]
    # }
    #
    def index
      response = self.class.get("/v1/#{@host}/Events")
      actions = response.to_a
    end

    def get(id)
      response = self.class.get("/v1/#{@host}/Events/#{id}")
      response.to_h
    end

    def create(options = {})
      response = self.class.post("/v1/#{@host}/Events/", options)
    end

    def update(id, options = {})
      response = self.class.put("/v1/#{@host}/Events/#{id}", options)
    end

    def destroy(id)
      response = self.class.delete("/v1/#{@host}/Events/#{id}")
    end
  end
end
