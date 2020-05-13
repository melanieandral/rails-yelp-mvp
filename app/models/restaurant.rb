class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, inclusion: {in: ["chinese", "italian", "japanese", "french", "belgian"]}
  validates :phone_number, format: {with: /\A(0|\+\d{2}\s*|00\s*\d{2}\s*)(\d\s*){9}\z/}
end
