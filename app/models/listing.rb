class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :cart, optional: true 
  has_many :comments
end
