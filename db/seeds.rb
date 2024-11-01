
# Course: WEDB-3008
# Instructor: Wilson Reid
# Author: Will Bowyer
# Date Created: 27-10-24
# Last Updated: 1-11-24

# Clear data
Book.destroy_all
Author.destroy_all
Category.destroy_all

# Create Categories
10.times do
  Category.create(name: Faker::Book.genre)
end
puts "Created #{Category.count} categories."

# Create Authors
40.times do
  Author.create(
    name: Faker::Book.author,
    biography: Faker::Lorem.paragraph(sentence_count: 5),
    birthdate: Faker::Date.birthday(min_age: 25, max_age: 80)
  )
end
puts "Created #{Author.count} authors."

# Create Books
target_books = 150
current_books = Book.count

while current_books < target_books
  book = Book.create(
    title: Faker::Book.title,
    description: Faker::Lorem.paragraph(sentence_count: 3),
    published_date: Faker::Date.backward(days: 5000),
    author: Author.all.sample,
    category: Category.all.sample
  )
  current_books = Book.count if book.persisted?
end
puts "Created #{Book.count} books."

