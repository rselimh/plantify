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

puts "Destroy users"
User.destroy_all if Rails.env.development?


puts "Create users"

user1 = User.create!(
  email: "plantlover@garden.com",
  password: "123456"
  )

user2 = User.create!(
  email: "greensoul@jungle.com",
  password: "123456"
  )

puts "Create plants"

plant1_1 = Plant.new(
  name: "Beautiful Monstera",
  description: "Grown in a loving house. I sing my Monstera a lullabye every night. Always make sure it gets enough sun and not too much water.",
  address: "Skalitzer Str 99, Berlin",
  price_per_day: 3,
  status: "approved"
  )

file1 = URI.open('https://www.palmenmann.de/media/image/48/11/9b/image_MONS-DELI-3298_1_600x600.jpg')
# file = cl_image_tag("81i5n0gykj4y1nhzwpc1dh9xbw57", width: 400, height: 300, crop: :fill)  # TODO instead of uploading, can we use an uploaded image?
plant1_1.photos.attach(io: file1, filename: 'monstera1.jpg', content_type: 'image/jpg')
file2 = URI.open('https://images.unsplash.com/photo-1525498128493-380d1990a112?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80')
plant1_1.photos.attach(io: file2, filename: 'monstera2.jpg', content_type: 'image/jpg')
file3 = URI.open('https://unsplash.com/photos/tEnDHPTTZqM/download?force=true&w=1920')
plant1_1.photos.attach(io: file3, filename: 'monstera3.jpg', content_type: 'image/jpg')
plant1_1.user = user1
plant1_1.save!

plant1_2 = Plant.new(
  name: "Lovely Philodendron",
  description: "My favorite philodenrdon in the world, it even has a name: Precious. I have known Precious for 20 years and we have changed 3 cities together. Warning! If you rent it once, you will want to keep it forever. ",
  address: "Skalitzer Str 99, Berlin",
  price_per_day: 5,
  status: "approved"
  )

file4 = URI.open('https://unsplash.com/photos/gMB96cODP-U/download?force=true&w=1920')
plant1_2.photos.attach(io: file4, filename: 'Philodendron1.jpg', content_type: 'image/jpg')
file5 = URI.open('https://unsplash.com/photos/HtRfBkprwRk/download?force=true&w=1920')
plant1_2.photos.attach(io: file5, filename: 'Philodendron2.jpg', content_type: 'image/jpg')
file6 = URI.open('https://unsplash.com/photos/eb3HOB8l-x8/download?force=true&w=1920')
plant1_2.photos.attach(io: file6, filename: 'Philodendron3.jpg', content_type: 'image/jpg')
plant1_2.user = user1
plant1_2.save!


plant1_3 = Plant.new(
  name: "Incredible Cactus Garden",
  description: "I am sharing my wonderful cactus garden. There are many different types and around 30 plants. Some are leafy and spiny, treelike, shrubby, and often scrambling. Many species may be treelike or shrubby, 2–7 m high, but occasionally at 10 m. Roots are sometimes thickened and tuberous. Leaves are generally alternate, broad, flattened, deciduous, usually with petioles, 2–20 cm long. Areoles exist on the axils of the leaves, usually with wool, and bear spines and leaves. The young primary areoles on twigs normally have up to eight spines, while areoles on trunks usually have more (15 to 40, up to 120) straight, usually black spines of unequal length.",
  address: "Skalitzer Str 99, Berlin",
  price_per_day: 20,
  status: "approved"
  )

file7 = URI.open('https://unsplash.com/photos/KuLu5kj2k4o/download?force=true&w=1920')
plant1_3.photos.attach(io: file7, filename: 'Cactus1.jpg', content_type: 'image/jpg')
file8 = URI.open('https://unsplash.com/photos/EJWrW-nlyyI/download?force=true&w=1920')
plant1_3.photos.attach(io: file8, filename: 'Cactus2.jpg', content_type: 'image/jpg')
file9 = URI.open('https://unsplash.com/photos/fmJx-xuxHtA/download?force=true&w=1920')
plant1_3.photos.attach(io: file9, filename: 'Cactus3.jpg', content_type: 'image/jpg')
plant1_3.user = user1
plant1_3.save!

plant1_4 = Plant.new(
  name: "Anthurium - Vivid colors",
  description: "I got these from my mom and she got them from her mother, so it has been following our family for generations. The leaves are often clustered and are variable in shape. The inflorescence bears small flowers which are perfect, containing male and female structures. The flowers are contained in dense spirals on the spadix. The spadix is often elongated into a spike shape, but it can be globe-shaped or club-shaped. Some also have fruits, they are juicy berries varying in color.",
  address: "Skalitzer Str 99, Berlin",
  price_per_day: 20,
  status: "approved"
  )

file10 = URI.open('https://unsplash.com/photos/UZC1N10C598/download?force=true&w=1920')
plant1_4.photos.attach(io: file10, filename: 'Anthurium1.jpg', content_type: 'image/jpg')
file11 = URI.open('https://unsplash.com/photos/rzMgnwWOTJE/download?force=true&w=1920')
plant1_4.photos.attach(io: file11, filename: 'Anthurium2.jpg', content_type: 'image/jpg')
file12 = URI.open('https://unsplash.com/photos/ReFFRGUzRRw/download?force=true&w=1920')
plant1_4.photos.attach(io: file12, filename: 'Anthurium3.jpg', content_type: 'image/jpg')
plant1_4.user = user1
plant1_4.save!



plant2_1 = Plant.new(
  name: "Sanctuary plant",
  description: "Just like the name suggests, this sanctuary plant makes you feel right at home. Optimal Growing Conditions:  Sun Exposure: Full Sun. Soil Type: Normal or Sandy. Soil pH: Neutral or Alkaline or Acid. Soil Moisture: Dry. Care Level: Easy",
  address: "Turmstr 23, 10559 Berlin",
  price_per_day: 22,
  status: "approved"
  )

ffile1 = URI.open('https://unsplash.com/photos/dIZiA7dkRjc/download?force=true&w=1920')
plant2_1.photos.attach(io: ffile1, filename: 'monstera1.jpg', content_type: 'image/jpg')
ffile2 = URI.open('https://unsplash.com/photos/B2JUvo192ys/download?force=true&w=1920')
plant2_1.photos.attach(io: ffile2, filename: 'monstera2.jpg', content_type: 'image/jpg')
plant2_1.user = user2
plant2_1.save!

plant2_2 = Plant.new(
  name: "Happy plants",
  description: "Planted in 6” pot. 4 leaves (1 leaf is broken)  Water & Humidity – This houseplant requires low to medium amounts of water. Let the soil dry out in between watering. If you live in a hot area, water about once every 2 to 3 days; if you live in a rainy area, then water as necessary. Most importantly, the anthurium requires proper drainage",
  address: "Turmstr 23, 10559 Berlin",
  price_per_day: 7,
  status: "approved"
  )

ffile4 = URI.open('https://unsplash.com/photos/8mqOw4DBBSg/download?force=true&w=1920')
plant2_2.photos.attach(io: ffile4, filename: 'happy1.jpg', content_type: 'image/jpg')
ffile5 = URI.open('https://unsplash.com/photos/_mgfuATaQnk/download?force=true&w=1920')
plant2_2.photos.attach(io: ffile5, filename: 'happy2.jpg', content_type: 'image/jpg')
plant2_2.user = user2
plant2_2.save!


plant2_3 = Plant.new(
  name: "Jungle plants",
  description: "Pot size - 6” Sun requirement: Indoor Care instructions: Let soil dry in between watering.",
  price_per_day: 12,
  status: "approved"
  )

ffile7 = URI.open('https://unsplash.com/photos/5sF6NrB1MEg/download?force=true&w=1920')
plant2_3.photos.attach(io: ffile7, filename: 'jungle1.jpg', content_type: 'image/jpg')
ffile8 = URI.open('https://unsplash.com/photos/OOE4xAnBhKo/download?force=true&w=1920')
plant2_3.photos.attach(io: ffile8, filename: 'jungle2.jpg', content_type: 'image/jpg')
ffile9 = URI.open('https://unsplash.com/photos/MvA86_qwpEI/download?force=true&w=1920')
plant2_3.photos.attach(io: ffile9, filename: 'jungle3.jpg', content_type: 'image/jpg')
plant2_3.user = user2
plant2_3.save!

plant2_4 = Plant.new(
  name: "Nature feeling",
  description: "New growth on the way. Flowers occasionally. Can go into dormancy during winter. Bright indirect sun, soil should remain moist during growth. 3 ceramic pot included.",
  address: "Boelckestraße 22, 12101 Berlin",
  price_per_day: 9,
  status: "approved"
  )

ffile10 = URI.open('https://unsplash.com/photos/lRcoPGrwkv0/download?force=true&w=1920')
plant2_4.photos.attach(io: ffile10, filename: 'nature1.jpg', content_type: 'image/jpg')
ffile11 = URI.open('https://unsplash.com/photos/iANAdaNu7mg/download?force=true&w=1920')
plant2_4.photos.attach(io: ffile11, filename: 'nature2.jpg', content_type: 'image/jpg')
ffile12 = URI.open('https://unsplash.com/photos/KamSS2euCzA/download?force=true&w=1920')
plant2_4.photos.attach(io: ffile12, filename: 'nature3.jpg', content_type: 'image/jpg')
plant2_4.user = user2
plant2_4.save!

# plant1_2 = Plant.new(
#   name: "Lovely Philodendron",
#   description: "Brings peace to the room. Behaves well with other plants and also makes the air cleaner",
#   address: "Skalitzer Str 99, Berlin",
#   price_per_day: 5,
#   status: "approved"
#   )

# file = URI.open('https://www.palmenmann.de/media/image/48/11/9b/image_MONS-DELI-3298_1_600x600.jpg')
# # file = cl_image_tag("81i5n0gykj4y1nhzwpc1dh9xbw57", width: 400, height: 300, crop: :fill)  # TODO instead of uploading, can we use an uploaded image?
# plant1_2.photos.attach(io: file, filename: 'monstera1.jpg', content_type: 'image/jpg')
# plant1_2.user = user1
# plant1_2.save!

# 5.times do
#   user = User.create!(
#     email: Faker::Internet.email,
#     password: "123456"
#     )
#   2.times do
#     plant = Plant.new(
#       name: Faker::Cannabis.strain,
#       description: Faker::Hipster.sentence(word_count: 3),
#       address: Faker::Address.street_address,
#       price_per_day: Faker::Number.number(digits: 2),
#       status: "declined"
#       )
#     plant.user = user
#     plant.save!
#   end

# end

# 5.times do
#   user = User.create!(
#     email: Faker::Internet.email,
#     password: "123456"
#     )
#   2.times do
#     plant = Plant.new(
#       name: Faker::Cannabis.strain,
#       description: Faker::Hipster.sentence(word_count: 3),
#       address: Faker::Address.street_address,
#       price_per_day: Faker::Number.number(digits: 2),
#       status: "approved"
#       )
#     plant.user = user
#     plant.save!
#   end

# end

# 5.times do
#   user = User.create!(
#     email: Faker::Internet.email,
#     password: "123456"
#     )
#   2.times do
#     plant = Plant.new(
#       name: Faker::Cannabis.strain,
#       description: Faker::Hipster.sentence(word_count: 3),
#       address: Faker::Address.street_address,
#       price_per_day: Faker::Number.number(digits: 2),
#       status: "pending"
#       )
#     plant.user = user
#     plant.save!
#   end

# end



puts 'Finished!'


      # t.string :name
      # t.text :description
      # t.text :address
      # t.integer :price_per_day
      # t.string :status "pending" "approuved" "declined"
