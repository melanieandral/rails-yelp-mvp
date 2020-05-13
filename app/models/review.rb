class Review < ApplicationRecord
  belongs_to :restaurants
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: 0..5 }, numericality: { only_integer: true}
end
