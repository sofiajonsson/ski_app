class User < ApplicationRecord
  has_many :listings
  has_many :comments
  belongs_to :cart, optional: true

  validates :username, uniqueness: true
end
