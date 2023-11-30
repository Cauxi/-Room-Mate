puts "Cleaning database..."
Member.destroy_all
Group.destroy_all
User.destroy_all
puts "Creating users..."
User.create(first_name: "Tiago", last_name: "Neto", nickname: "tiaguito", age: 27, location: "Porto", description: "Surfer, travel and foodie lover", email: "tiago@lewagon.com", password: "123456", gender: "Male", tags: "surf, travel, foodie")
User.create(first_name: "Tiago2", last_name: "Neto2", nickname: "tiaguit2o", age: 27, location: "Porto", description: "Surfer, travel and foodie lover", email: "tiago2@lewagon.com", password: "123456", gender: "Male", tags: "surf, travel, foodie")

User.create(first_name: "test", last_name: "damn", nickname: "holy", age: 27, location: "Porto", description: "Surfer, travel and foodie lover", email: "damn@lewagon.com", password: "123456", gender: "Male", tags: "surf, please, work")


User.create(first_name: "Carlos", last_name: "Coelho", nickname: "carlitos", age: 25, location: "Setubal", description: "Cats, music and computers", email: "carlos@lewagon.com", password: "123456", gender: "Male", tags: "cats, music, computers")
User.create(first_name: "Catarina", last_name: "Furtado", nickname: "catarinita", age: 33, location: "Oslo", description: "Sport, travel and foodie lover", email: "catarina@lewagon.com", password: "123456", gender: "Female", tags: "sport, travel, foodie")
User.create(first_name: "Vasco", last_name: "Pereira", nickname: "vasquito", age: 21, location: "Porto", description: "Games, foodie lover and nightlife", email: "vasco@lewagon.com", password: "123456", gender: "Male", tags: "games, foodie, nightlife")
User.create(first_name: "Alberto", last_name: "Sousa", nickname: "berto20", age: 44, location: "Porto", description: "I LIKE TO PARTTYYY", email: "alberto@lewagon.com", password: "123456", gender: "Male", tags: "alchool, party, music")
