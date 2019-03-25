class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :cart
  has_many :comments
end
