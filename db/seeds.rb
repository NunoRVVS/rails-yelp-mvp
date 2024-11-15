# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
#puts "Cleaning database..."
  Restaurant.destroy_all

# 2. Create the instances 🏗️
  puts "Creating restaurants..."
  Restaurant.create!(name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "+35192074725254", category: "chinese")
  puts "Created Dishoom"
  Restaurant.create!(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "+35192078495254", category: "italian")
  puts "Created Pizza East"
  Restaurant.create!(name: "Wagamama", address: "58A Holborn High St, London E16 7PQ", phone_number: "+35192078495254", category: "japanese")
  puts "Created Wagamama"
  Restaurant.create!(name: "The Gallete", address: "Direction de l'Urbanisme - Ville de Paris, 75055 Paris", phone_number: "+35192078495254", category: "french")
  puts "Created The Gallete"
  Restaurant.create!(name: "Bozar Restaurant", address: "7 Adelaide Street, London E1 6PQ", phone_number: "+35192078495254", category: "belgian")
  puts "Created Bozar Restaurant"

# 3. Display a message 🎉
  puts "Finished! Created #{Restaurant.count} restaurants."
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
