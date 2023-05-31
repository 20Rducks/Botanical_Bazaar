

require 'open-uri'

puts "Cleaning database..."

User.destroy_all
Plant.destroy_all

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
