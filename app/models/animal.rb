class Animal < ApplicationRecord
  belongs_to :owner, class_name: "User"
  validates :name, presence: true
  validates :price_per_day, presence: true
  validates :localisation, presence: true
  validates :summary, length: { maximum: 1000 }
  has_one_attached :photo
  include PgSearch::Model
  pg_search_scope :search_by_name_and_summary,
                  against: %i[name summary],
                  using: {
                    tsearch: { prefix: true }
                  }
end
