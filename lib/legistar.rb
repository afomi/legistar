require "httparty"
require "legistar/version"
require "legistar/actions"
require "legistar/bodies"
# require "pry" # Note: Helpful during development

module Legistar
  include HTTParty
  base_uri 'webapi.legistar.com'

  attr_accessor :host

  class WebApi
    def initialize(host:)
      @host = host
    end
  end

  class BodyTypes
  end

  class CodeSections
  end

  class EventItems
  end

  class Events
  end

  class Indexes
  end

  class MatterAttachments
  end

  class MatterCodeSections
  end

  class MatterHistories
  end

  class MatterIndexes
  end

  class MatterRelations
  end

  class MatterRequesters
  end

  class Matters
  end

  class MatterSponsors
  end

  class MatterStatuses
  end

  class MatterTexts
  end

  class MatterTypes
  end

  class OfficeRecords
  end

  class Persons
  end

  class RollCalls
  end

  class Votes
  end

  class VoteTypes
  end
end
