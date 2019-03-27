class Cart < ApplicationRecord
  has_many :listings
  has_one :user
<<<<<<< HEAD
  accepts_nested_attributes_for :listings, allow_destroy: true
=======
  validates :listing_id, uniqueness: true
>>>>>>> c315b053db251ae6de478769e90e76da6d75f958
end
