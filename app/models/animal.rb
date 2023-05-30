class Animal < ApplicationRecord
  belongs_to :owner, class_name: "User"
  validates :name, presence: true
  validates :price_per_day, presence: true
  validates :localisation, presence: true
  validates :summary, length: { maximum: 200 }
  has_one_attached :photo
end
