# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  user = User.new
  user.email = Faker::Internet.user[:email]
  user.password = 'secret'
  user.username = Faker::Internet.user[:username]
  user.save!
end

20.times do
  Puppy.create!(
    name: Faker::Creature::Dog.name,
    address: Faker::Address.street_address,
    breed: Faker::Creature::Dog.breed,
    description: Faker::GreekPhilosophers.quote,
    user_id: rand(1..10)
  )
end

