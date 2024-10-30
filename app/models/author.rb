class Author < ApplicationRecord
  has_many :books
  
  validates :name, presence: true
  validates :biography, length: { minimum: 10 }
end
