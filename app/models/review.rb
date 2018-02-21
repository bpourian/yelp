class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, presence: true, numericality:{only_integer: true, greater_than: 0, less_than: 11, message: "- Please enter a rating between 1 and 10."}
end
