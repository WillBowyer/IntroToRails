# Course: WEDB-3008
# Instructor: Wilson Reid
# Author: Will Bowyer
# Date Created: 27-10-24
# Last Updated: 1-11-24

class Author < ApplicationRecord
  has_many :books

  validates :name, presence: true
  validates :biography, length: { minimum: 10 }
end
