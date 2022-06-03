# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all && Puppy.destroy_all && User.destroy_all

admin_user = User.create!(
  email: 'admin@admin.com',
  password: 'secret',
  username: 'admin'
)

10.times do
  user = User.new
  user.email = Faker::Internet.user[:email]
  user.password = 'secret'
  user.username = Faker::Internet.user[:username]
  user.save!
end

users = User.all
# url = URI.open("https://source.unsplash.com/random/?dog&2"

puppy = Puppy.new(
  name: Faker::Creature::Dog.name,
  address: '15 Sutton Grove, Richmond, VIC',
  breed: Faker::Creature::Dog.breed,
  description: Faker::GreekPhilosophers.quote,
  user: admin_user,
  cost_per_night: rand(10..50)
)

puts "attaching images"
3.times do |i|
  file = URI.open("https://source.unsplash.com/random/?dog&#{i}")
  puppy.photos.attach(io: file, filename: "#{puppy.name} #{i}")
end
puts "finished attaching images"

puppy.save!

puppy = Puppy.new(
  name: Faker::Creature::Dog.name,
  address: '2 Portland St, Richmond, VIC',
  breed: Faker::Creature::Dog.breed,
  description: Faker::GreekPhilosophers.quote,
  user: admin_user,
  cost_per_night: rand(10..50)
)

puts "attaching images"
3.times do |i|
  file = URI.open("https://source.unsplash.com/random/?dog&#{i}")
  puppy.photos.attach(io: file, filename: "#{puppy.name} #{i}")
end
puts "finished attaching images"

puppy.save!

puppy = Puppy.new(
  name: Faker::Creature::Dog.name,
  address: '20 Clifton St, Richmond, VIC',
  breed: Faker::Creature::Dog.breed,
  description: Faker::GreekPhilosophers.quote,
  user: admin_user,
  cost_per_night: rand(10..50)
)

puts "attaching images"
3.times do |i|
  file = URI.open("https://source.unsplash.com/random/?dog&#{i}")
  puppy.photos.attach(io: file, filename: "#{puppy.name} #{i}")
end
puts "finished attaching images"

puppy.save!

puppy = Puppy.new(
  name: Faker::Creature::Dog.name,
  address: '35 Malcolm St, South Yarra, VIC',
  breed: Faker::Creature::Dog.breed,
  description: Faker::GreekPhilosophers.quote,
  user: users.sample,
  cost_per_night: rand(10..50)
)

puts "attaching images"
3.times do |i|
  file = URI.open("https://source.unsplash.com/random/?dog&#{i}")
  puppy.photos.attach(io: file, filename: "#{puppy.name} #{i}")
end
puts "Finsihed attaching images"

puppy.save!

puppy = Puppy.new(
  name: Faker::Creature::Dog.name,
  address: '35 Nicholson St, South Yarra, VIC',
  breed: Faker::Creature::Dog.breed,
  description: Faker::GreekPhilosophers.quote,
  user: users.sample,
  cost_per_night: rand(10..50)
)

3.times do |i|
  file = URI.open("https://source.unsplash.com/random/?dog&#{i}")
  puppy.photos.attach(io: file, filename: "#{puppy.name} #{i}")
end

puppy.save!

puppy = Puppy.new(
  name: Faker::Creature::Dog.name,
  address: '399 Lonsdale St, Melbourne, VIC',
  breed: Faker::Creature::Dog.breed,
  description: Faker::GreekPhilosophers.quote,
  user: users.sample,
  cost_per_night: rand(10..50)
)

3.times do |i|
  file = URI.open("https://source.unsplash.com/random/?dog&#{i}")
  puppy.photos.attach(io: file, filename: "#{puppy.name} #{i}")
end

puppy.save!

puppy = Puppy.new(
  name: Faker::Creature::Dog.name,
  address: '71 Hardware Ln, Melbourne, VIC',
  breed: Faker::Creature::Dog.breed,
  description: Faker::GreekPhilosophers.quote,
  user: users.sample,
  cost_per_night: rand(10..50)
)

3.times do |i|
  file = URI.open("https://source.unsplash.com/random/?dog&#{i}")
  puppy.photos.attach(io: file, filename: "#{puppy.name} #{i}")
end

puppy.save!

puppy = Puppy.new(
  name: Faker::Creature::Dog.name,
  address: '44 Dorrit St, Carlton, VIC',
  breed: Faker::Creature::Dog.breed,
  description: Faker::GreekPhilosophers.quote,
  user: users.sample,
  cost_per_night: rand(10..50)
)

3.times do |i|
  file = URI.open("https://source.unsplash.com/random/?dog&#{i}")
  puppy.photos.attach(io: file, filename: "#{puppy.name} #{i}")
end

puppy.save!

puppy = Puppy.new(
  name: Faker::Creature::Dog.name,
  address: '9 King William St, Fitzroy, VIC',
  breed: Faker::Creature::Dog.breed,
  description: Faker::GreekPhilosophers.quote,
  user: users.sample,
  cost_per_night: rand(10..50)
)

3.times do |i|
  file = URI.open("https://source.unsplash.com/random/?dog&#{i}")
  puppy.photos.attach(io: file, filename: "#{puppy.name} #{i}")
end

puppy.save!

puppy = Puppy.new(
  name: Faker::Creature::Dog.name,
  address: '80 Nicholson St, Fitzroy, VIC',
  breed: Faker::Creature::Dog.breed,
  description: Faker::GreekPhilosophers.quote,
  user: users.sample,
  cost_per_night: rand(10..50)
)

3.times do |i|
  file = URI.open("https://source.unsplash.com/random/?dog&#{i}")
  puppy.photos.attach(io: file, filename: "#{puppy.name} #{i}")
end

puppy.save!

puppy = Puppy.new(
  name: Faker::Creature::Dog.name,
  address: '12 Garfield St, Fitzroy, VIC',
  breed: Faker::Creature::Dog.breed,
  description: Faker::GreekPhilosophers.quote,
  user: users.sample,
  cost_per_night: rand(10..50)
)

3.times do |i|
  file = URI.open("https://source.unsplash.com/random/?dog&#{i}")
  puppy.photos.attach(io: file, filename: "#{puppy.name} #{i}")
end

puppy.save!

puppy = Puppy.new(
  name: Faker::Creature::Dog.name,
  address: '150 Bellair St, Kensington, VIC',
  breed: Faker::Creature::Dog.breed,
  description: Faker::GreekPhilosophers.quote,
  user: users.sample,
  cost_per_night: rand(10..50)
)

3.times do |i|
  file = URI.open("https://source.unsplash.com/random/?dog&#{i}")
  puppy.photos.attach(io: file, filename: "#{puppy.name} #{i}")
end

puppy.save!

puppy = Puppy.new(
  name: Faker::Creature::Dog.name,
  address: '10 Percy St, Kensington, VIC',
  breed: Faker::Creature::Dog.breed,
  description: Faker::GreekPhilosophers.quote,
  user: users.sample,
  cost_per_night: rand(10..50)
)

3.times do |i|
  file = URI.open("https://source.unsplash.com/random/?dog&#{i}")
  puppy.photos.attach(io: file, filename: "#{puppy.name} #{i}")
end

puppy.save!

puppy = Puppy.new(
  name: Faker::Creature::Dog.name,
  address: '49 Westbourne Rd, Kensington, VIC',
  breed: Faker::Creature::Dog.breed,
  description: Faker::GreekPhilosophers.quote,
  user: users.sample,
  cost_per_night: rand(10..50)
)

3.times do |i|
  file = URI.open("https://source.unsplash.com/random/?dog&#{i}")
  puppy.photos.attach(io: file, filename: "#{puppy.name} #{i}")
end

puppy.save!

puppy = Puppy.new(
  name: Faker::Creature::Dog.name,
  address: '29 Sydney St, Ascot Vale, VIC',
  breed: Faker::Creature::Dog.breed,
  description: Faker::GreekPhilosophers.quote,
  user: users.sample,
  cost_per_night: rand(10..50)
)

3.times do |i|
  file = URI.open("https://source.unsplash.com/random/?dog&#{i}")
  puppy.photos.attach(io: file, filename: "#{puppy.name} #{i}")
end

puppy.save!

puppy = Puppy.new(
  name: Faker::Creature::Dog.name,
  address: '22 Mascoma St, Ascot Vale, VIC',
  breed: Faker::Creature::Dog.breed,
  description: Faker::GreekPhilosophers.quote,
  user: users.sample,
  cost_per_night: rand(10..50)
)

3.times do |i|
  file = URI.open("https://source.unsplash.com/random/?dog&#{i}")
  puppy.photos.attach(io: file, filename: "#{puppy.name} #{i}")
end

puppy.save!

puppy = Puppy.new(
  name: Faker::Creature::Dog.name,
  address: '49 Middle St, Ascot Vale, VIC',
  breed: Faker::Creature::Dog.breed,
  description: Faker::GreekPhilosophers.quote,
  user: users.sample,
  cost_per_night: rand(10..50)
)

puppies = Puppy.where(user: admin_user)
p puppies
users_not_admin = User.where.not(email: "admin@admin.com")

6.times do
  Booking.create!(
    user: users_not_admin.sample,
    puppy: puppies.sample,
    total_cost_per_night: rand(100..500),
    start_date: Date.today + rand(0..12).days,
    end_date: Date.today + 12.days + rand(0..12).days,
  )
end

not_my_puppies = Puppy.where.not(user: admin_user)

20.times do
  Booking.create!(
    user: admin_user,
    puppy: not_my_puppies.sample,
    total_cost_per_night: rand(100..500),
    start_date: Date.today + rand(0..12).days,
    end_date: Date.today + 12.days + rand(0..12).days,
    status: ["pending", "approved", "decline"].sample
  )
end
