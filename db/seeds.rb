require "open-uri"

puts "Cleaning database..."
Member.destroy_all
Group.destroy_all
User.destroy_all
puts "DB cleared"

puts "Creating users..."

file1 = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1697011172/cil7pa2pv76krqejflyr.jpg")
user1 = User.create(first_name: "Tiago", last_name: "Neto", nickname: "tiaguito", age: 27, location: "Porto", description: "Surfer, travel and foodie lover", email: "tiago@lewagon.com", password: "123456", gender: "Male", tags: "surf, travel, Foodie")
user1.photo.attach(io: file1, filename: "nes.png", content_type: "image/png")
user1.save

file2 = URI.open("https://avatars.githubusercontent.com/u/107856581?v=4")
user2 = User.create(first_name: "João", last_name: "Martins", nickname: "BigJ", age: 26, location: "Porto", description: "I love Le Wagon, it's the best company ever made, thank you Boris and Seb. Coma Bem is the best!", email: "joao@lewagon.com", password: "123456", gender: "Male", tags: "Gaming, Foodie, LH44")
user2.photo.attach(io: file2, filename: "joao.png", content_type: "image/png")
user2.save

file3 = URI.open("https://avatars.githubusercontent.com/u/66433133?v=4")
user3 = User.create(first_name: "Vasco", last_name: "Pereira", nickname: "vasquinho", age: 21, location: "Porto", description: "Coding by day, gaming by night. Add me if you want to talk about our Lord Tachanka", email: "vasco@lewagon.com", password: "123456", gender: "Male", tags: "Gaming, Foodie, Nightlife")
user3.photo.attach(io: file3, filename: "vasco.png", content_type: "image/png")
user3.save

file4 = URI.open("https://media.istockphoto.com/id/1306109857/photo/portuguese-senior-man-in-porto-portugal.jpg?s=612x612&w=0&k=20&c=oeJtLxsIfX0yW1AjBf7MfLtaWeRP3EgwWc8bC8bP64Y=")
user4 = User.create(first_name: "Alberto", last_name: "Rosa", nickname: "bertinho83", age: 66, location: "Porto", description: "Lost everything, now I start a new life as a boxing coach.", email: "alberto@lewagon.com", password: "123456", gender: "Male", tags: "Boxing, Foodie, Nightlife")
user4.photo.attach(io: file4, filename: "alberto.png", content_type: "image/png")
user4.save

file5 = URI.open("https://www.latin-wife.com/images/south-american-women-5.jpg")
user5 = User.create(first_name: "Maria", last_name: "Diaz", nickname: "Mdiaz", age: 28, location: "Porto", description: "I want to go and live in Porto to study. I'm from South America and I want to find likeminded people to share a house with. Invite me with you like to surf :)", email: "maria@lewagon.com", password: "123456", gender: "Female", tags: "Surf, Yoga, Music")
user5.photo.attach(io: file5, filename: "maria.png", content_type: "image/png")
user5.save
