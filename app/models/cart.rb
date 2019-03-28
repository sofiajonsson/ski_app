class Cart < ApplicationRecord
  has_many :listings
  belongs_to :user

  accepts_nested_attributes_for :listings, allow_destroy: true
  # validates :listing_id, uniqueness: true

end
