class Book < ApplicationRecord
  belongs_to :author
  belongs_to :category

  validates :title, presence: true, uniqueness: true
  validates :published_date, presence: true
end
