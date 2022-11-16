# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Destroying the current DB"
Restaurant.destroy_all
puts "Creating a new DB"

100.times do
  restaurant = Restaurant.new(name: Faker::Name.name, address: Faker::Address.street_address, phone_number: Faker::PhoneNumber.phone_number, category: ["chinese", "italian", "japanese", "french", "belgian"].sample)
  if restaurant.save
    restaurant.save
    puts "Restaurant number #{restaurant.id} created"
  else
    puts "Something went wrong"
  end
end

puts "DB Completed"
