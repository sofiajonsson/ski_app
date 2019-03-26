class UserRating < ApplicationRecord
  has_one :user, :class_name => "User"
  has_one :rater, :class_name => "User"
end
