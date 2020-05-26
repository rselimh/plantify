# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'faker'

puts "Destroy plants"
Plant.destroy_all if Rails.env.development?

puts "Create plants"

5.times do
  user = User.create!(
    email: Faker::Internet.email,
    password: "123456"
    )
  5.times do
  plant = Plant.new(
    name: Faker::Company.catch_phrase,
    description: Faker::Hipster.sentence(word_count: 3),
    address: Faker::Address.street_address,
    price_per_day: Faker::Number.number(digits: 2),
    status: "declined"
  )
  plant.user = user
  plant.save!
end

end




# 5.times do
#   Plant.create!(
#     name: Faker::Company.catch_phrase,
#     description: Faker::Hipster.sentence(word_count: 3),
#     address: Faker::Address.street_address,
#     price_per_day: Faker::Number.number(digits: 2),
#     status: "approved"
#   )
# end

# 5.times do
#   Plant.create!(
#     name: Faker::Company.catch_phrase,
#     description: Faker::Hipster.sentence(word_count: 3),
#     address: Faker::Address.street_address,
#     price_per_day: Faker::Number.number(digits: 2),
#     status:"pending"
#   )
# end


puts 'Finished!'


      # t.string :name
      # t.text :description
      # t.text :address
      # t.integer :price_per_day
      # t.string :status "pending" "approuved" "declined"
