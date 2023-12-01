require "open-uri"

puts "Cleaning database..."
Member.destroy_all
Group.destroy_all
User.destroy_all
puts "DB cleared"

puts "Creating users..."

User.create(first_name: "Carlos", last_name: "Coelho", nickname: "carlitos", age: 25, location: "Setubal", description: "Cats, music and computers", email: "carlos@lewagon.com", password: "123456", gender: "Male", tags: "cats, music, computers")
User.create(first_name: "Catarina", last_name: "Furtado", nickname: "catarinita", age: 33, location: "Oslo", description: "Sport, travel and foodie lover", email: "catarina@lewagon.com", password: "123456", gender: "Female", tags: "sport, travel, foodie")
User.create(first_name: "Vasco", last_name: "Pereira", nickname: "vasquito", age: 21, location: "Porto", description: "Games, foodie lover and nightlife", email: "vasco@lewagon.com", password: "123456", gender: "Male", tags: "games, foodie, nightlife")
User.create(first_name: "Alberto", last_name: "Sousa", nickname: "berto20", age: 44, location: "Porto", description: "I LIKE TO PARTTYYY", email: "alberto@lewagon.com", password: "123456", gender: "Male", tags: "alchool, party, music")

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
user1 = User.create(first_name: "Tiago", last_name: "Neto", nickname: "tiaguito", age: 27, location: "Matosinhos", description: "Surfer, travel and foodie lover", email: "tiago@lewagon.com", password: "123456", gender: "Male", tags: "surf, travel, foodie")
user1.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user1.save

 #User.create(first_name: "Carlos", last_name: "Coelho", nickname: "carlitos", age: 25, location: "Setubal", description: "Cats, music and computers", email: "carlos@lewagon.com", password: "123456", gender: "Male", tags: "cats, music, computers")
 #User.create(first_name: "Catarina", last_name: "Furtado", nickname: "catarinita", age: 33, location: "Oslo", description: "Sport, travel and foodie lover", email: "catarina@lewagon.com", password: "123456", gender: "Female", tags: "sport, travel, foodie")
#User.create(first_name: "Vasco", last_name: "Pereira", nickname: "vasquito", age: 21, location: "Porto", description: "Games, foodie lover and nightlife", email: "vasco@lewagon.com", password: "123456", gender: "Male", tags: "games, foodie, nightlife")
