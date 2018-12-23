module Legistar
  class OfficeRecord
    include HTTParty
    base_uri 'https://webapi.legistar.com'

    def initialize(host:)
      @host = host
    end

    # Example Response
    #
    # {
    #   "OfficeRecordId"=>570,
    #   "OfficeRecordGuid"=>"D26FB33D-5979-42B4-8F79-22D72973EE76",
    #   "OfficeRecordLastModifiedUtc"=>"2014-05-24T04:15:17",
    #   "OfficeRecordRowVersion"=>"AAAAAAALQFw=",
    #   "OfficeRecordFirstName"=>"Kyle",
    #   "OfficeRecordLastName"=>"Jones",
    #   "OfficeRecordEmail"=>"Councilmember.Jones@mesaaz.gov",
    #   "OfficeRecordFullName"=>"Kyle Jones",
    #   "OfficeRecordStartDate"=>"2006-06-05T00:00:00",
    #   "OfficeRecordEndDate"=>"2011-01-18T00:00:00",
    #   "OfficeRecordSort"=>4,
    #   "OfficeRecordPersonId"=>174,
    #   "OfficeRecordBodyId"=>138,
    #   "OfficeRecordBodyName"=>"City Council",
    #   "OfficeRecordTitle"=>"Vice Mayor",
    #   "OfficeRecordVoteDivider"=>1.0,
    #   "OfficeRecordExtendFlag"=>0,
    #   "OfficeRecordMemberTypeId"=>3,
    #   "OfficeRecordMemberType"=>"Member",
    #   "OfficeRecordSupportNameId"=>nil,
    #   "OfficeRecordSupportFullName"=>nil
    # }
    #
    def index
      response = self.class.get("/v1/#{@host}/OfficeRecords")
      actions = response.to_a
    end

    def get(id)
      response = self.class.get("/v1/#{@host}/OfficeRecords/#{id}")
      response.to_h
    end

    def get_for_person(id, person_id)
      response = self.class.get("/v1/#{@host}/Persons/#{person_id}/OfficeRecords/#{id}")
      response.to_h
    end

    def get_for_body(id, body_id)
      response = self.class.get("/v1/#{@host}/Bodies/#{body_id}/OfficeRecords/#{id}")
      response.to_h
    end

    def create(options = {})
      response = self.class.post("/v1/#{@host}/OfficeRecords/", options)
    end

    def update(id, options = {})
      response = self.class.put("/v1/#{@host}/OfficeRecords/#{id}", options)
    end

    def destroy(id)
      response = self.class.delete("/v1/#{@host}/OfficeRecords/#{id}")
    end
  end
end
