# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# 1. give feedbacks to your developer
puts "Destroying restaurants..."
# 2. clean your daabase
Restaurant.destroy_all

puts "Creating restaurants..."
Restaurant.create!(
  name: "Le Dindon en Laisse"
)
Restaurant.create!(
  name: "Neuf et Voisins"
)
puts "Finished!"
