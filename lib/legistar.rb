require "httparty"
require "legistar/version"
require "legistar/action"
require "legistar/body"
require "legistar/body_type"
require "legistar/code_section"
require "legistar/event"
require "legistar/event_item"
require "legistar/index"
require "legistar/person"
require "legistar/office_record"
require "legistar/roll_call"
require "legistar/vote_type"
require "legistar/vote"
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

  class RollCalls
  end

  class Votes
  end

  class VoteTypes
  end
end
