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
user1 = User.new(first_name: "Tiago", last_name: "Neto", nickname: "tiaguito", age: 27, location: "Porto", description: "I've been travelling the world for the last year. I am looking for a place in Porto, now that I finished my bootcamp with Le Wagon. If you're a surfer we can catch some waves in the mornings :).", email: "tiago@lewagon.com", password: "123456", gender: "Male", tags: "surf, travel, Foodie")
file1 = URI.open("https://avatars.githubusercontent.com/u/144708452?v=4")
user1.photos.attach(io: file1, filename: "file1.png", content_type: "image/png")
puts "raquel"
user5 = User.new(first_name: "Raquel", last_name: "Barbosa", nickname: "raquelbarbosa94", age: 29, location: "Porto", description: "I am never at home, and I like to see the world. I am looking for one roomie to share a flat with, invite me if you don't mind me watching movies until 3 am.", email: "raquel@lewagon.com", password: "123456", gender: "Female", tags: "Movies, Nature, Coffee, Music")
file8 = URI.open("https://scontent.cdninstagram.com/v/t51.2885-15/132842085_829179584567743_3453825774947591087_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE2NDMuc2RyIn0&_nc_ht=scontent.cdninstagram.com&_nc_cat=107&_nc_ohc=u3Eq-2ktvZ0AX80XcOd&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=MjQ3Mjg0MDI1OTY2NDAwMzE5OQ%3D%3D.2-ccb7-5&oh=00_AfDbpYRXwZ0SLLGsJmMbXKgIcOegHM1jSd1tKPQFGvrxaw&oe=65749522&_nc_sid=10d13b")
file9 = URI.open("https://scontent-lhr8-1.cdninstagram.com/v/t51.2885-15/72708820_186490202480807_7058061300691805849_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0Nzkuc2RyIn0&_nc_ht=scontent-lhr8-1.cdninstagram.com&_nc_cat=111&_nc_ohc=wUUrGlgkc5wAX9Z5bo0&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=MjE3OTM2NjYxNTU3MjY5MjQ1NQ%3D%3D.2-ccb7-5&oh=00_AfBY3G7lbkEkrLL-pI_TMNKwXsAVfHuRdiGNHILrU7HPlg&oe=6575E573&_nc_sid=10d13b")
user5.photos.attach([
  {io: file8, filename: 'file8.png', content_type: 'image/png'},
  {io: file9, filename: 'file9.png', content_type: 'image/png'},
])
puts "abdul"
user8 = User.new(first_name: "Abdullah", last_name: "Tayara", nickname: "aboode_tayara", age: 19, location: "Porto", description: "I am originally from Syria, and I am now living in Egypt. I want to persue an acting carrer in Porto, the vibrance of the city and the many theaters make the perfect recipe for me. If you like good company, you can't go wrong with me.", email: "abdul@lewagon.com", password: "123456", gender: "Male", tags: "Acting, Theater, Gaming, Foodie")
file16 = URI.open("https://instagram.fopo3-2.fna.fbcdn.net/v/t51.2885-15/136967758_410441966860543_3563470537388026745_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi43MTN4ODMzLnNkciJ9&_nc_ht=instagram.fopo3-2.fna.fbcdn.net&_nc_cat=107&_nc_ohc=Obxl1_1upkIAX-peyDZ&edm=ACWDqb8BAAAA&ccb=7-5&ig_cache_key=MjQ4MjMyMDgyODQ3ODcxNDMzMA%3D%3D.2-ccb7-5&oh=00_AfD1bdKwpL7__H1zgIIm2uz1fHY1jir8CkkZxboPaA_hkw&oe=65735112&_nc_sid=ee9879")
file17 = URI.open("https://instagram.fopo3-1.fna.fbcdn.net/v/t51.2885-15/285280855_1168869233951939_7157444401093953571_n.webp?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xMDgweDEzNTAuc2RyIn0&_nc_ht=instagram.fopo3-1.fna.fbcdn.net&_nc_cat=111&_nc_ohc=yJh16lQetDYAX9yXIfJ&edm=ACWDqb8BAAAA&ccb=7-5&ig_cache_key=Mjg1MDQ4NTA0NTg0NDYwNzMwMQ%3D%3D.2-ccb7-5&oh=00_AfCXHe3Urc1ITFOOtMkbf2yRkfguebQrL8B3a6s_JKjhGQ&oe=6574398B&_nc_sid=ee9879")
user8.photos.attach([
  {io: file16, filename: 'file16.png', content_type: 'image/png'},
  {io: file17, filename: 'file17.png', content_type: 'image/png'},
])

puts "kortney"

file10 = URI.open("https://instagram.fopo3-2.fna.fbcdn.net/v/t51.2885-15/405794253_1064022451294728_6087255112269182935_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE4MDAuc2RyIn0&_nc_ht=instagram.fopo3-2.fna.fbcdn.net&_nc_cat=100&_nc_ohc=A-wcC6xt34gAX9bHCZ6&edm=ACWDqb8BAAAA&ccb=7-5&ig_cache_key=MzI0ODk0MTM3MTg3NTc4MTU2Nw%3D%3D.2-ccb7-5&oh=00_AfBCMJet0eYXw0XoSyeA2Dbv2iSmJJMp-fbThuVGMDNqQg&oe=65748660&_nc_sid=ee9879")
file11 = URI.open("https://instagram.fopo3-1.fna.fbcdn.net/v/t51.2885-15/378521534_849983053138698_3565991360571487535_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE4MDAuc2RyIn0&_nc_ht=instagram.fopo3-1.fna.fbcdn.net&_nc_cat=106&_nc_ohc=pqSJbJMqUcEAX9OuVue&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MzE5MzM4OTczODk1NDAzOTU4OQ%3D%3D.2-ccb7-5&oh=00_AfAZ80MRK4ELvtzCNxbSnT2KrRUq9tocph30oJaydQubyQ&oe=65760F2F&_nc_sid=b41fef")
file12 = URI.open("https://instagram.fopo3-1.fna.fbcdn.net/v/t51.2885-15/367524456_160811773703252_2218415290754494244_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE4MDAuc2RyIn0&_nc_ht=instagram.fopo3-1.fna.fbcdn.net&_nc_cat=108&_nc_ohc=PJRzVevMlLMAX-xBKwC&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MzE3MDgzNDMyNTMxODQyODI5Nw%3D%3D.2-ccb7-5&oh=00_AfA3sKVI_GKgTgtU17lBbdQ0BIKsJHVTPrZ_pRKbdkRcwg&oe=6575D716&_nc_sid=b41fef")
user6 = User.new(first_name: "Kortney", last_name: "Coleman", nickname: "kortneyeliesecoleman", age: 28, location: "Porto", description: "I am going to live in Porto for at least the next year, since I got a promotion at work. Unfortunatly I had no idea how high the prices of houses where 😬. I also like to record videos for my youtube channel at home!", email: "kortney@lewagon.com", password: "123456", gender: "Female", tags: "Gym, Coffee, Nightlife, Youtube")
user6.photos.attach([
  {io: file10, filename: 'file10.png', content_type: 'image/png'},
  {io: file11, filename: 'file11.png', content_type: 'image/png'},
  {io: file12, filename: 'file12.png', content_type: 'image/png'},
])

puts "marie"
file13 = URI.open("https://instagram.fopo3-1.fna.fbcdn.net/v/t51.2885-15/367458770_187477497549750_4816709815697166029_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE4MDAuc2RyIn0&_nc_ht=instagram.fopo3-1.fna.fbcdn.net&_nc_cat=106&_nc_ohc=rhNeTE8AMG4AX_gZB74&edm=ACWDqb8BAAAA&ccb=7-5&ig_cache_key=MzE2ODY1OTgxNTM5NDI5NTYxNw%3D%3D.2-ccb7-5&oh=00_AfAzGtdB_cLKkQVhnghU1Td-DuGQ-dpe2ik3lIzgdrlCBg&oe=6575C5AB&_nc_sid=ee9879")
file14 = URI.open("https://instagram.fopo3-2.fna.fbcdn.net/v/t51.2885-15/166339331_917946265690084_6463285579910067172_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE4MDAuc2RyIn0&_nc_ht=instagram.fopo3-2.fna.fbcdn.net&_nc_cat=104&_nc_ohc=iLAAHvg_n5sAX_otZ_v&edm=ACWDqb8BAAAA&ccb=7-5&ig_cache_key=MjU0MTAwMTY4NTY2MTM5NDg2MA%3D%3D.2-ccb7-5&oh=00_AfCq9R5aaQyoNHKGwIPU22pb9F6YClu8oxliXZ7PTVpLSQ&oe=657374FB&_nc_sid=ee9879")
file15 = URI.open("https://scontent.cdninstagram.com/v/t51.2885-15/135325939_508845566753768_4131026957858391674_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyIn0&_nc_ht=scontent.cdninstagram.com&_nc_cat=108&_nc_ohc=Gh852iE4dsEAX8oeVek&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=MjQ3OTI0OTExNTIzMDcwNzA0Mg%3D%3D.2-ccb7-5&oh=00_AfAke3UCFk_2mayK6iVmnprNXHfQ8aZVWezmU9aZfTlFoA&oe=6575289E&_nc_sid=10d13b")
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
file3 = URI.open("https://instagram.fopo3-2.fna.fbcdn.net/v/t51.2885-15/13277839_1610460802601978_1266989538_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi42Njh4Njk3LnNkciJ9&_nc_ht=instagram.fopo3-2.fna.fbcdn.net&_nc_cat=102&_nc_ohc=o2CYE-dVciwAX8n7K6Q&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MTI2MTE2NDcwNzMwNDc2NDUyNA%3D%3D.2-ccb7-5&oh=00_AfB2ndAYInFc55PCR49LUCHailZt4NGLhAB_Jq2-LIPXfg&oe=6573163A&_nc_sid=b41fef")
file4 = URI.open("https://instagram.fopo3-2.fna.fbcdn.net/v/t51.2885-15/10724854_1518432225070226_1463857244_n.jpg?stp=dst-jpg_e15&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi42NDB4NjQwLnNkciJ9&_nc_ht=instagram.fopo3-2.fna.fbcdn.net&_nc_cat=102&_nc_ohc=BWEM6v1IqOAAX-9UjhI&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=ODMxMTkxMzMxNTEyMDU0Nzkx.2-ccb7-5&oh=00_AfAIXSaGilem9n39dhFPAMKplk-FiuIEZv2iw1LCxq9HWQ&oe=657305E7&_nc_sid=b41fef")
user3 = User.new(first_name: "João", last_name: "Amaral", nickname: "pedrocas92", age: 29, location: "Porto", description: "I am a Graphic and Packaging Designer. Looking to move back to Porto after staying in the UK for 4 days. I am known to be clean and I like a quiet home to work from.", email: "pedro@lewagon.com", password: "123456", gender: "Male", tags: "Design, Art, Travel")
user3.photos.attach([
  {io: file3, filename: 'file3.png', content_type: 'image/png'},
  {io: file4, filename: 'file4.png', content_type: 'image/png'},
])
puts "ze"
file5 = URI.open("https://instagram.fopo3-2.fna.fbcdn.net/v/t51.2885-15/394663346_1414011049328544_4082196737212593169_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDk1Ny5zZHIifQ&_nc_ht=instagram.fopo3-2.fna.fbcdn.net&_nc_cat=100&_nc_ohc=kX-mpVhrGGYAX8kS38P&edm=ACWDqb8BAAAA&ccb=7-5&ig_cache_key=MzIyMDEzODQxNjI3NTgyMDExOA%3D%3D.2-ccb7-5&oh=00_AfChfGeY407A0uDWqhOniH0C_qb6s30XAN_3_nY-Mk_RRA&oe=6573A8D3&_nc_sid=ee9879")
file6 = URI.open("https://instagram.fopo3-1.fna.fbcdn.net/v/t51.2885-15/379430655_679389590914211_761366625769379279_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE4MDAuc2RyIn0&_nc_ht=instagram.fopo3-1.fna.fbcdn.net&_nc_cat=111&_nc_ohc=NPqm1aG2b38AX9rMJQ1&edm=ACWDqb8BAAAA&ccb=7-5&ig_cache_key=MzE5MzIxMTc2NjY0MDY0MjM1NA%3D%3D.2-ccb7-5&oh=00_AfDZ6hz_97OEPDehyoduKE-5Nmu-Cf5126SPTFx8ncUdGg&oe=6572F395&_nc_sid=ee9879")
file7 = URI.open("https://instagram.fopo3-1.fna.fbcdn.net/v/t51.2885-15/367875323_669424211908835_7573018749801744408_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE4MDAuc2RyIn0&_nc_ht=instagram.fopo3-1.fna.fbcdn.net&_nc_cat=111&_nc_ohc=ylZpmufOKjEAX80CPXU&edm=ABmJApABAAAA&ccb=7-5&ig_cache_key=MzE2OTk4MzMwMDA2MzY2NDk2OQ%3D%3D.2-ccb7-5&oh=00_AfAQLDbg1drjba18rsS1Sq0xSkVUTiUqJN9IvcjymUqHWA&oe=65735534&_nc_sid=b41fef")
user4 = User.new(first_name: "Zé", last_name: "Alves", nickname: "zequinha", age: 31, location: "Porto", description: "I am a summer and beach enthusiast! I am looking to move out from my current home to a more pleasent enviroment.", email: "ze@lewagon.com", password: "123456", gender: "Male", tags: "Beer, Travel, Fashion, Wakeboarding")
user4.photos.attach([
  {io: file5, filename: 'file5.png', content_type: 'image/png'},
  {io: file6, filename: 'file6.png', content_type: 'image/png'},
  {io: file7, filename: 'file7.png', content_type: 'image/png'},
])

puts "tiago"
user1.save
puts "raquel"
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
