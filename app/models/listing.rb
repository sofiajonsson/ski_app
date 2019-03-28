class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :cart, optional: true
  has_many :comments
  validates :title, presence: true
  validates :title, uniqueness: true
  validates_length_of :title, maximum: 30
  validates :description, presence: true
  validates_length_of :description, within: 30..300

end
