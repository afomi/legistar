RSpec.describe Legistar::OfficeRecord do
  describe "OfficeRecord" do
    before do
      @client = Legistar::OfficeRecord.new(host: "mesa")
    end

    describe "#index" do
      it "return an array of OfficeRecords, as hashes" do
        office_records = @client.index
        expect(office_records.class).to eq(Array)
        expect(office_records.first.class).to eq(Hash)
      end
    end

    describe "#get" do
      before do
        @office_record = @client.get("570") # TODO: Brittle
      end

      it "return a Event, as a hash" do
        expect(@office_record.class).to eq(Hash)
        expect(@office_record.keys).to include("OfficeRecordId")
        expect(@office_record.keys).to include("OfficeRecordGuid")
        expect(@office_record.keys).to include("OfficeRecordLastModifiedUtc")
        expect(@office_record.keys).to include("OfficeRecordRowVersion")
        expect(@office_record.keys).to include("OfficeRecordFirstName")
        expect(@office_record.keys).to include("OfficeRecordLastName")
        expect(@office_record.keys).to include("OfficeRecordEmail")
        expect(@office_record.keys).to include("OfficeRecordFullName")
        expect(@office_record.keys).to include("OfficeRecordStartDate")
        expect(@office_record.keys).to include("OfficeRecordEndDate")
        expect(@office_record.keys).to include("OfficeRecordSort")
        expect(@office_record.keys).to include("OfficeRecordPersonId")
        expect(@office_record.keys).to include("OfficeRecordBodyId")
        expect(@office_record.keys).to include("OfficeRecordBodyName")
        expect(@office_record.keys).to include("OfficeRecordTitle")
        expect(@office_record.keys).to include("OfficeRecordVoteDivider")
        expect(@office_record.keys).to include("OfficeRecordExtendFlag")
        expect(@office_record.keys).to include("OfficeRecordMemberTypeId")
        expect(@office_record.keys).to include("OfficeRecordMemberType")
        expect(@office_record.keys).to include("OfficeRecordSupportNameId")
        expect(@office_record.keys).to include("OfficeRecordSupportFullName")
      end
    end

    xdescribe "#get_for_person" do
    end

    xdescribe "#get_for_body" do
    end

    xdescribe "#create" do
    end

    xdescribe "#update" do
    end

    xdescribe "#destroy" do
    end
  end
end
