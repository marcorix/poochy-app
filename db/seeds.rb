require "open-uri"

puts 'Cleaning db...'

Booking.destroy_all
Dog.destroy_all
Review.destroy_all
User.destroy_all

puts 'Creating 3 users...'

# USERS-----------------------------
file = URI.open("https://awarding.org.uk/wp-content/uploads/2020/10/Boris-Johnson.jpg")
user1 = User.new(
  email: "jack@gmail.com",
  password: "123456",
  first_name: "Jack",
  last_name: "Frusciante",
  description: "I am looking for someone who can be friends with my dog because I am too busy",
  owner: true
)
user1.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
user1.save!

file = URI.open("https://racing-elite.com/wp-content/uploads/2020/05/echo/230347.jpg")
user2 = User.new(
  email: "roger@gmail.com",
  password: "123456",
  first_name: "Roger",
  last_name: "Taylor",
  description: "I need someone to take my dog for a run because I'm going too fast for him..",
  owner: true
)
user2.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
user2.save!

file = URI.open("https://static.infofamouspeople.com/avatar/bn2q1pj2a2a8t41i6hh0_headshots_gino-dacampo-1.jpg")
user3 = User.new(
  email: "Jason@gmail.com",
  password: "123456",
  first_name: "Jason",
  last_name: "Kay",
  description: "I've always been a great lover of dogs and porks",
  owner: true
)
user3.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
user3.save!

file = URI.open("https://static.infofamouspeople.com/avatar/bn2q1pj2a2a8t41i6hh0_headshots_gino-dacampo-1.jpg")
user4 = User.new(
  email: "franco@gmail.com",
  password: "123456",
  first_name: "Franco",
  last_name: "Manca",
  description: "i feel so lonley...i wanto to make new friends!",
  owner: false,
  poochies: 3
)
user4.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
user4.save!

file = URI.open("https://cdn.allfamous.org/people/avatars/boris-becker-tl22-allfamous.org.jpg")
user5 = User.new(
  email: "paulo@gmail.com",
  password: "123456",
  first_name: "Paulo",
  last_name: "Dybala",
  description: "Dogs are my passion, i have a real love for them.",
  owner: false,
  poochies: 12
)
user5.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
user5.save!

# DOGS---------------------------
puts 'Creating dogs...'

file = URI.open("https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/how-i-met-my-dog-adoption-1564609343.jpg")
dog = Dog.new(
  name: "Pepe",
  age: 1,
  size: "large",
  breed: "Cross breed",
  address: "11A Buckfast St, London, E2 6EY",
  description: "She is an absolute dream of a puppy, she loves playing with other dogs and loves meeting new people (shes fully vaccinated).",
  likes: 25,
  gender: "female",
  user: user1
)
dog.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
dog.save!


file = URI.open("https://blog.myollie.com/content/images/2020/03/shutterstock_335297090.jpg")
dog = Dog.new(
  name: "Ally",
  age: 2,
  size: "medium",
  breed: "Greyhound",
  address: "118 Kingsland Road, London",
  description: "Ally loves long walks to the dog park where he can run freely and play with the other dogs. He also loves to play fetch.",
  likes: 15,
  gender: "male",
  user: user1
)
dog.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
dog.save!


file = URI.open("https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/mixed-breed-dogs-weimador-1560174538.jpg")
dog = Dog.new(
  name: "Tommy",
  age: 3,
  size: "large",
  breed: "Cross breed",
  address: "2 Mastmaker Rd, London E14 9AW",
  description: "loves to sleep, play tug of war or football, and have her back scratched!",
  likes: 31,
  gender: "male",
  user: user1
)
dog.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
dog.save!


file = URI.open("https://www.rover.com/blog/wp-content/uploads/2021/06/woodytheluckylab-edited.jpg")
dog = Dog.new(
  name: "Axel",
  age: 1,
  size: "medium",
  breed: "Labrador",
  address: "2 Mastmaker Rd, London E14 9AW",
  description: "The cutest dog in the world",
  likes: 4,
  gender: "female",
  user: user1
)
dog.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
dog.save!


file = URI.open("https://www.scotsman.com/webimg/b25lY21zOmE5NTI3YzIwLTM1OWItNDk5OC04Zjg2LTQ1ZmFlY2FlZGI1ODo2ZThlZWI3ZC0xYmU2LTQwNzEtYmEwNi00YTYzY2VhYmYxMWU=.jpg")
dog = Dog.new(
  name: "Dodo",
  age: 1,
  size: "medium",
  breed: "Golden Retriever",
  address: "35 St Stephen's Rd, Old Ford, London E3 5JD",
  description: "Dodo loves a good belly scratch and long walks.",
  likes: 44,
  gender: "male",
  user: user2
)
dog.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
dog.save!


file = URI.open("https://www.dogbreedslist.info/uploads/dog-pictures/german-shepherd-dog-2.jpg")
dog = Dog.new(
  name: "Darko",
  age: 1,
  size: "medium",
  breed: "German Sheperd",
  address: "75 Borough High St, London SE1 1NH",
  description: "Darko is a playful, fun loving, well trained Labrador retriever. He loves meeting people and getting their attention and love .",
  likes: 14,
  gender: "male",
  user: user2
)
dog.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
dog.save!


file = URI.open("https://i.pinimg.com/originals/f3/88/a5/f388a57004e78dfb34ae72c860df05ac.jpg")
dog = Dog.new(
  name: "Kinka",
  age: 1,
  size: "medium",
  breed: "English Setter",
  address: "36 New N Rd, London N1 6TE",
  description: "She is super friendly and calm for her age. At home she is sleeping most part of the time but she also likes to play with her toys at times. ",
  likes: 18,
  gender: "female",
  user: user2
)
dog.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
dog.save!


file = URI.open("https://i.pinimg.com/originals/1a/a8/36/1aa83694b0814bb3f72036d133767964.jpg")
dog = Dog.new(
  name: "Tomato",
  age: 2,
  size: "medium",
  breed: "Goldendoodle",
  address: "34 Drayton Park, London N5 1PB",
  description: "love people surrounding him, play with him! He is cute boy.",
  likes: 27,
  gender: "male",
  user: user2
)
dog.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
dog.save!


file = URI.open("https://i.ytimg.com/vi/EkH86behKxY/maxresdefault.jpg")
dog = Dog.new(
  name: "Teppy",
  age: 2,
  size: "small",
  breed: "Jack Russel",
  address: "76A Clarence Rd, London E5 8HB",
  description: "love people surrounding him, play with him! He is cute boy.",
  likes: 57,
  gender: "male",
  user: user2
)
dog.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
dog.save!


file = URI.open("https://www.scotsman.com/webimg/b25lY21zOjU3NzdhZmQ5LTllNWEtNGJlZC05Y2ZmLTViY2IxYzM3MWRhMjo2NTMwZjI0Yy0yZWI1LTQ0NjQtOTEyZC01MTA2MDJmMTc0ZWI=.jpg")
dog = Dog.new(
  name: "Tano",
  age: 1,
  size: "medium",
  breed: "Chow Chow",
  address: "38 Kenton Rd, London E9 7AB",
  description: "Tano loves to play with all dogs but quite scared of people coming to pet him uninvited. He can be a bit stubborn sometimes but boiled chicken or cheese will always get his attention.",
  likes: 72,
  gender: "male",
  user: user3
)
dog.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
dog.save!


file = URI.open("https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F47%2F2021%2F03%2F09%2Fchihuahua-laying-down-wooden-floor-1675701502-2000.jpg")
dog = Dog.new(
  name: "Chupachups",
  age: 3,
  size: "small",
  breed: "chihuahua",
  address: "28 Ropemaker St, London EC2Y 9HD",
  description: "He is a huge cuddle bug who loves a fuss and curling up on anything soft next to you. Although he's a very big boy, he is very laid back and lazy, especially after a nice long walk. ",
  likes: 59,
  gender: "male",
  user: user3
)
dog.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
dog.save!


file = URI.open("https://cdn.shopify.com/s/files/1/2394/1045/articles/Female_dalmatian_head_shot_1840x.jpg")
dog = Dog.new(
  name: "Maggie",
  age: 3,
  size: "large",
  breed: "Dalmatian",
  address: "316 St John St, London EC1V 4NT",
  description: "She has so much energy!!!!. Loves playing with other dogs and he has to be put into place when he does not stop pestering them.",
  likes: 31,
  gender: "female",
  user: user3
)
dog.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
dog.save!


puts 'Finish!'
