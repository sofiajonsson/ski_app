class Cart < ApplicationRecord
  has_many :listings
  has_one :user

  accepts_nested_attributes_for :listings, allow_destroy: true
  validates :listing_id, uniqueness: true
end
