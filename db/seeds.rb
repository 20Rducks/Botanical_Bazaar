# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'

puts "Cleaning database..."

user = User.create!(email: 'test@test.com', password: '123123', password_confirmation: '123123')

Plant.destroy_all

puts "Creating Plants"

10.times do
  file = URI.open('https://www.gardeningknowhow.com/wp-content/uploads/2012/01/peace-lily-1.jpg')
  file2 = URI.open('https://www.gardeningknowhow.com/wp-content/uploads/2012/01/peace-lily-1.jpg')
  file3 = URI.open('https://www.gardeningknowhow.com/wp-content/uploads/2012/01/peace-lily-1.jpg')
  file4 = URI.open('https://www.gardeningknowhow.com/wp-content/uploads/2012/01/peace-lily-1.jpg')
  file5 = URI.open('https://www.gardeningknowhow.com/wp-content/uploads/2012/01/peace-lily-1.jpg')
  plant = Plant.create!(species: "Swiss Cheese Plant", price: 150, description: "Lovely swiss cheese plant to rent, comes with a block of cheese", user_id: user.id)
  plant.photos.attach(io: file, filename: "plant.jpg", content_type: 'images/jpg')
  plant.photos.attach(io: file2, filename: "plant.jpg", content_type: 'images/jpg')
  plant.photos.attach(io: file3, filename: "plant.jpg", content_type: 'images/jpg')
  plant.photos.attach(io: file4, filename: "plant.jpg", content_type: 'images/jpg')
  plant.photos.attach(io: file5, filename: "plant.jpg", content_type: 'images/jpg')
end

puts "Plants Created"
