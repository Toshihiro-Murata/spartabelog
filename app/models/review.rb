class Review < ActiveRecord::Base
  validates :score, presence: true,
    numericality: {
      only_integer: true,
      greater_than_or_equal_to: 1,
      less_than_or_equal_to: 5 }
  validates :body, presence: true
  belongs_to :user
  belongs_to :restaurant
end
