class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :animal
  validates :start_date, comparison: { less_than_or_equal_to: :end_date }, presence: true
  validates :end_date, comparison: { greater_than_or_equal_to: :start_date }, presence: true
end
