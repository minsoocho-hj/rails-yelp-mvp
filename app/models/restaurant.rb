class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy # @restaurant.reviews 가능

  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian) }
end
