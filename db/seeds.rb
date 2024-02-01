require "open-uri"

puts "Cleaning database..."
Message.destroy_all
Chatroom.destroy_all
Member.destroy_all
Group.destroy_all
User.destroy_all
puts "DB cleared"

puts "Creating users..."
puts "tiago"
user1 = User.new(first_name: "Tiago", last_name: "Neto", nickname: "tiaguito", age: 27, location: "Porto", description: "I've been travelling the world for the last year. I am looking for a place in Porto, now that I finished my bootcamp with Le Wagon. If you're a surfer we can catch some waves in the mornings :).", email: "tiago@lewagon.com", password: "123456", gender: "Male", tags: "Surf, Travel, Foodie")
file1 = URI.open("https://avatars.githubusercontent.com/u/144708452?v=4")
file18 = URI.open("https://i.stack.imgur.com/FAOZX.png")
user1.photos.attach([
  {io: file1, filename: "file1.png", content_type: "image/png"},
  {io: file18, filename: "file18.png", content_type: "image/png"},
])
puts "raquel"
user5 = User.new(first_name: "Raquel", last_name: "Barbosa", nickname: "raquelbarbosa94", age: 29, location: "Porto", description: "I am never at home, and I like to see the world. I am looking for one roomie to share a flat with, invite me if you don't mind me watching movies until 3 am.", email: "raquel@lewagon.com", password: "123456", gender: "Female", tags: "Movies, Nature, Coffee, Travel")
file8 = URI.open("https://images.unsplash.com/photo-1578774296842-c45e472b3028?q=80&w=2656&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
file9 = URI.open("https://i.stack.imgur.com/FAOZX.png")
user5.photos.attach([
  {io: file8, filename: 'file8.png', content_type: 'image/png'},
  {io: file9, filename: 'file9.png', content_type: 'image/png'},
])
puts "abdul"
user8 = User.new(first_name: "Abdullah", last_name: "Tayara", nickname: "aboode_tayara", age: 19, location: "Porto", description: "I am originally from Syria, and I am now living in Egypt. I want to persue an acting carrer in Porto, the vibrance of the city and the many theaters make the perfect recipe for me. If you like good company, you can't go wrong with me.", email: "abdul@lewagon.com", password: "123456", gender: "Male", tags: "Acting, Theater, Gaming, Foodie")
file16 = URI.open("https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
file17 = URI.open("https://i.stack.imgur.com/FAOZX.png")
user8.photos.attach([
  {io: file16, filename: 'file16.png', content_type: 'image/png'},
  {io: file17, filename: 'file17.png', content_type: 'image/png'},
])

puts "kortney"
file10 = URI.open("https://plus.unsplash.com/premium_photo-1664203068007-52240d0ca48f?q=80&w=3051&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
file11 = URI.open("https://i.stack.imgur.com/FAOZX.png")
file12 = URI.open("https://clipart-library.com/images/8cGbedjKi.jpg")
user6 = User.new(first_name: "Kortney", last_name: "Coleman", nickname: "kortneyeliesecoleman", age: 28, location: "Porto", description: "I am going to live in Porto for at least the next year, since I got a promotion at work. Unfortunatly I had no idea how high the prices of houses were 😬. I also like to record videos for my youtube channel at home!", email: "kortney@lewagon.com", password: "123456", gender: "Female", tags: "Gym, Coffee, Nightlife, Youtube")
user6.photos.attach([
  {io: file10, filename: 'file10.png', content_type: 'image/png'},
  {io: file11, filename: 'file11.png', content_type: 'image/png'},
  {io: file12, filename: 'file12.png', content_type: 'image/png'},
])

puts "marie"
file13 = URI.open("https://images.unsplash.com/photo-1601288496920-b6154fe3626a?q=80&w=1826&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
file14 = URI.open("https://i.stack.imgur.com/FAOZX.png")
file15 = URI.open("https://clipart-library.com/images/8cGbedjKi.jpg")
user7 = User.new(first_name: "Marie", last_name: "Antoinette", nickname: "marie_antoinette", age: 20, location: "Porto", description: "Hello you, I am from the Netherlands and I am going to study in Portugal. I want to find a big group for a big house!", email: "marie@lewagon.com", password: "123456", gender: "Female", tags: "Motorcycles, Nightlife, Vlogs")
user7.photos.attach([
  {io: file13, filename: 'file13.png', content_type: 'image/png'},
  {io: file14, filename: 'file14.png', content_type: 'image/png'},
  {io: file15, filename: 'file15.png', content_type: 'image/png'},
])
puts "joao"
file2 = URI.open("https://avatars.githubusercontent.com/u/107856581?v=4")
user2 = User.new(first_name: "João", last_name: "Martins", nickname: "BigJ", age: 26, location: "Porto", description: "I love Le Wagon, it's the best company ever made, thank you Boris and Seb. Coma Bem is the best!", email: "joao@lewagon.com", password: "123456", gender: "Male", tags: "Gaming, Foodie, LH44, WebDev")
user2.photos.attach([
  {io: file2, filename: 'file2.png', content_type: 'image/png'},
])
puts "pedro"
file3 = URI.open("https://images.unsplash.com/photo-1582233479366-6d38bc390a08?q=80&w=2966&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
file4 = URI.open("https://i.stack.imgur.com/FAOZX.png")
user3 = User.new(first_name: "João", last_name: "Amaral", nickname: "pedrocas92", age: 29, location: "Porto", description: "I am a Graphic and Packaging Designer. Looking to move back to Porto after staying in the UK for 4 days. I am known to be clean and I like a quiet home to work from.", email: "pedro@lewagon.com", password: "123456", gender: "Male", tags: "Design, Art, Travel")
user3.photos.attach([
  {io: file3, filename: 'file3.png', content_type: 'image/png'},
  {io: file4, filename: 'file4.png', content_type: 'image/png'},
])
puts "ze"
file5 = URI.open("https://images.unsplash.com/photo-1611695434369-a8f5d76ceb7b?q=80&w=3135&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
file7 = URI.open("https://i.stack.imgur.com/FAOZX.png")
user4 = User.new(first_name: "Zé", last_name: "Alves", nickname: "zequinha", age: 31, location: "Porto", description: "I am a summer and beach enthusiast! I am looking to move out from my current home to a more pleasent enviroment.", email: "ze@lewagon.com", password: "123456", gender: "Male", tags: "Beer, Travel, Fashion, Wakeboarding")
user4.photos.attach([
  {io: file5, filename: 'file5.png', content_type: 'image/png'},
  {io: file7, filename: 'file7.png', content_type: 'image/png'},
])

puts "save tiago"
user1.save
puts "save raquel"
user8.save
puts "abdul"
user5.save
puts "kortney"
user6.save
puts "marie"
user7.save
puts "joao"
user2.save
puts "pedro"
user3.save
puts "ze"
user4.save

puts "Completed!"
