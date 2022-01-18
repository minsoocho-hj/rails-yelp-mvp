class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, presence: true, :inclusion => 1..5
  validates :content, presence: true
end
