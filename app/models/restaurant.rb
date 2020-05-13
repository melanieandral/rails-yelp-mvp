class Restaurant < ApplicationRecord
  has_many :reviews, dependant: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: {in: ["chinese", "italian", "japanese", "french", "belgian"]}
  validates :phone_number, format: {with: /\A(0|\+\d{2}\s*|00\s*\d{2}\s*)(\d\s*){9}\z/}
end
