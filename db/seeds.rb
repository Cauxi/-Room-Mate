# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.destroy_all
User.create(first_name: "Vasco", last_name: "Gangster", nickname: "badboy", age: 21, location: "São Pedro da Cova", description: "I love guns and sex", email: "vasco@gmail.com", password: "123456", gender: "male")
