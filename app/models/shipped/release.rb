module Shipped
  class Release < ApplicationRecord
    validates :release_identifier, :released_at, presence: true
    validates :release_identifier, uniqueness: true
  end
end
