# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'open-uri'

puts "Cleaning database..."

# User.destroy_all
# Plant.destroy_all

user = User.create!(email: 'tesfet2@teldst2.com', password: '123123', password_confirmation: '123123')
plant = Plant.create!(species: "Swiss Cheese Plant", price: 150, description: "Lovely swiss cheese plant to rent, comes with a block of cheese", user_id: user.id)
5.times do
  file = URI.open('https://www.gardeningknowhow.com/wp-content/uploads/2012/01/peace-lily-1.jpg')
  plant.photos.attach(io: file, filename: "plant.jpg", content_type: 'images/jpg')
end
plant.save

user = User.create!(email: 'tesfet3@teldst3.com', password: '123123', password_confirmation: '123123')
plant = Plant.create!(species: "Swiss Cheese Plant", price: 150, description: "Lovely swiss cheese plant to rent, comes with a block of cheese", user_id: user.id)
file = URI.open('https://www.gardeningknowhow.com/wp-content/uploads/2012/01/peace-lily-1.jpg')
plant.photos.attach(io: file, filename: "plant.jpg", content_type: 'images/jpg')
plant.save

puts "Plants Created"

# user = User.create!(email: 'rob@rob.com', password: '123123', password_confirmation: '123123')
5.times do
  plant = Plant.create!(species: "Swiss Cheese Plant", price: 150, description: "Lovely swiss cheese plant to rent, comes with a block of cheese", user_id: user.id)
  5.times do
    file = URI.open('https://www.gardeningexpress.co.uk/media/product/6e8/echinocactus-grusonii-golden-barrel-cactus-or-mother-in-laws-seat-c3f.jpg')
    plant.photos.attach(io: file, filename: "plant.jpg", content_type: 'images/jpg')
  end
  plant.save
end

# 10.times do
#   plant = Plant.create!(species: "Swiss Cheese Plant", price: 150, description: "Lovely swiss cheese plant to rent, comes with a block of cheese", user_id: user.id)
#   5.times do
#     file = URI.open('https://www.gardeningknowhow.com/wp-content/uploads/2012/01/peace-lily-1.jpg')
#     plant.photos.attach(io: file, filename: "plant.jpg", content_type: 'images/jpg')
#   end
#   plant.save
# end
