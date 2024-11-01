# Course: WEDB-3008
# Instructor: Wilson Reid
# Author: Will Bowyer
# Date Created: 27-10-24
# Last Updated: 1-11-24

class Book < ApplicationRecord
  belongs_to :author
  belongs_to :category

  validates :title, presence: true, uniqueness: true
  validates :published_date, presence: true
end
