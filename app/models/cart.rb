class Cart < ApplicationRecord
  has_many :listings
  has_one :user
  validates :listing_id, uniqueness: true
end
