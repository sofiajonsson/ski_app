class User < ApplicationRecord
  has_many :listings
  has_many :comments
  belongs_to :cart, optional: true
  validates :username, uniqueness: true
  validates_length_of :password, minimum: 6
  has_secure_password
end
