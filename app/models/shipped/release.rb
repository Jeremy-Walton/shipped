module Shipped
  class Release < ApplicationRecord
    validates :commit_sha, :released_at, presence: true
    validates :commit_sha, uniqueness: true
  end
end
