# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
bike = Bike.create(
  name: 'Mountain Bike',
  model: 'X1',
  specifications: 'A high-performance mountain bike.',
  seller_contact: 'Contact information',
  photos: 'URL to photos',
  bike_type: 'Mountain'
)
Bike.create(
  name: 'Mountain Bike',
  model: 'XT-200',
  specifications: 'Full suspension, 29" wheels',
  seller_contact: 'John Doe',
  photos: 'mountain_bike.jpg',
  bike_type: 'Mountain'
)

Bike.create(
  name: 'Road Bike',
  model: 'Speedster S20',
  specifications: 'Carbon frame, 700c wheels',
  seller_contact: 'Jane Smith',
  photos: 'road_bike.jpg',
  bike_type: 'Road'
)


User.create(
  email: 'testuser@example.com',
  password: 'password',
  password_confirmation: 'password'
)

