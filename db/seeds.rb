# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'chinese' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'italian' }
dishoomb = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'french' }
pizza_eastb = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'japanese' }
dishoomc = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'belgian' }
pizza_eastc = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'french' }

[dishoom, pizza_east, dishoomb, pizza_eastb, dishoomc, pizza_eastc].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
