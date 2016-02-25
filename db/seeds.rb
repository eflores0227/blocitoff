# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require "faker"


items = Item.all

10.times do
  u = User.create!(
  email: Faker::Internet.email,
  password: Faker::Internet.password
  )


  5.times do
    Item.create!(
      name: Faker::SlackEmoji.food_and_drink,
      user: u
    )
  end
end



u = User.create!(
email: "stef@example.com",
password: "password"
)
5.times do
  Item.create!(
    name: Faker::SlackEmoji.food_and_drink,
    user: u
  )
end
users = User.all

puts "Seed finished"
puts "#{Item.count} items created"
puts "#{User.count} users created"
