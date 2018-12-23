module Legistar
  class Matter
    include HTTParty
    base_uri 'https://webapi.legistar.com'

    def initialize(host:)
      @host = host
    end

    # Example Response
    #
    # {
    #   "MatterId"=>2379,
    #   "MatterGuid"=>"451B225B-2418-4170-83B1-FACEB88BCBC7",
    #   "MatterLastModifiedUtc"=>"2015-02-05T23:28:27.557",
    #   "MatterRowVersion"=>"AAAAAAA1ibM=",
    #   "MatterFile"=>"10-0003",
    #   "MatterName"=>"Boards and Committees",
    #   "MatterTitle"=>"Appointments to boards and committees.",
    #   "MatterTypeId"=>55,
    #   "MatterTypeName"=>"Appointment",
    #   "MatterStatusId"=>80,
    #   "MatterStatusName"=>"Agenda Ready",
    #   "MatterBodyId"=>247,
    #   "MatterBodyName"=>"Planning and Zoning Board - Study Session",
    #   "MatterIntroDate"=>"2015-02-17T00:00:00",
    #   "MatterAgendaDate"=>"2010-08-23T00:00:00",
    #   "MatterPassedDate"=>"2010-08-23T00:00:00",
    #   "MatterEnactmentDate"=>nil,
    #   "MatterEnactmentNumber"=>nil,
    #   "MatterRequester"=>nil,
    #   "MatterNotes"=>nil,
    #   "MatterVersion"=>"1",
    #   "MatterText1"=>nil,
    #   "MatterText2"=>nil,
    #   "MatterText3"=>nil,
    #   "MatterText4"=>nil,
    #   "MatterText5"=>nil,
    #   "MatterDate1"=>nil,
    #   "MatterDate2"=>nil,
    #   "MatterEXText1"=>nil,
    #   "MatterEXText2"=>nil,
    #   "MatterEXText3"=>nil,
    #   "MatterEXText4"=>nil,
    #   "MatterEXText5"=>nil,
    #   "MatterEXText6"=>nil,
    #   "MatterEXText7"=>nil,
    #   "MatterEXText8"=>nil,
    #   "MatterEXText9"=>nil,
    #   "MatterEXText10"=>nil,
    #   "MatterEXText11"=>nil,
    #   "MatterEXDate1"=>nil,
    #   "MatterEXDate2"=>nil,
    #   "MatterEXDate3"=>nil,
    #   "MatterEXDate4"=>nil,
    #   "MatterEXDate5"=>nil,
    #   "MatterEXDate6"=>nil,
    #   "MatterEXDate7"=>nil,
    #   "MatterEXDate8"=>nil,
    #   "MatterEXDate9"=>nil,
    #   "MatterEXDate10"=>nil,
    #   "MatterAgiloftId"=>0,
    #   "MatterReference"=>nil,
    #   "MatterRestrictViewViaWeb"=>false,
    #   "MatterReports"=>[]
    # }
    #
    def index
      response = self.class.get("/v1/#{@host}/Matters")
      response.to_a
    end

    def get(id)
      response = self.class.get("/v1/#{@host}/Matters/#{id}")
      response.to_h
    end

    def create(options = {})
      response = self.class.post("/v1/#{@host}/Matters/", options)
    end

    def update(id, options = {})
      response = self.class.put("/v1/#{@host}/Matters/#{id}", options)
    end

    def destroy(id)
      response = self.class.delete("/v1/#{@host}/Matters/#{id}")
    end
  end
end
