require "shipped/version"
require "shipped/engine"

module Shipped
  # CONFIGURATION OPTIONS

  mattr_accessor :sha_link

  def self.setup
    yield self
  end

  # END CONFIGURATION OPTIONS
end
