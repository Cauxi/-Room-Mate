# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Member.destroy_all
Group.destroy_all
User.destroy_all
User.create(first_name: "Tiago", last_name: "Neto", nickname: "tiaguito", age: 27, location: "Matosinhos", description: "Surfer, travel and foodie lover", email: "tiago@lewagon.com", password: "123456", gender: "Male")
User.create(first_name: "Carlos", last_name: "Coelho", nickname: "carlitos", age: 25, location: "Setubal", description: "Cats, music and computers", email: "carlos@lewagon.com", password: "123456", gender: "Male")
User.create(first_name: "Catarina", last_name: "Furtado", nickname: "catarinita", age: 33, location: "Oslo", description: "Sport, travel and foodie lover", email: "catarina@lewagon.com", password: "123456", gender: "Female")
User.create(first_name: "Vasco", last_name: "Pereira", nickname: "vasquito", age: 21, location: "Maia", description: "Games, foodie lover and nightlife", email: "vasco@lewagon.com", password: "123456", gender: "Male")
