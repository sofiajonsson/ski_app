class Cart < ApplicationRecord
  has_many :listings
  has_one :user

end
