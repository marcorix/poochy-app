require "open-uri"

puts 'Cleaning db...'

Booking.destroy_all
Dog.destroy_all
User.destroy_all

puts 'Creating 3 dogs...'


user = User.create!(
          email: "owner1@gmail.com",
          password: "123456",
          first_name: "Owner",
          last_name: "One",
          description: "While there can be profile blurbs for companies and websites",
          owner: true,
          poochies: 3
)

file = URI.open("https://images.unsplash.com/photo-1552053831-71594a27632d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZG9nfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60.jpg")
dog = Dog.new(
        name: "Pepe",
        age: 2,
        size: "large",
        breed: "Labrador",
        user: user,
        address: "11A Buckfast St, London, E2 6EY",
        description: "Lovely flurry dog",
        likes: 5,
        gender: "male"
)
dog.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
dog.save!


file = URI.open("https://images.unsplash.com/photo-1576201836106-db1758fd1c97?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80.jpg")
dog = Dog.new(
        name: "Ally",
        age: 2,
        size: "medium",
        breed: "Jack Russel",
        user: user,
        address: "118 Kingsland Road, London",
        description: "The cutest dog in the world",
        likes: 5,
        gender: "female"
)
dog.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
dog.save!


user = User.create!(

          email: "owner2@gmail.com",
          password: "123456",
          first_name: "Owner",
          last_name: "Two",
          description: "While there can be profile blurbs for companies and websites",
          owner: true,
          poochies: 3
)


file = URI.open("https://images.unsplash.com/photo-1546527868-ccb7ee7dfa6a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHVwcHl8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60.jpg")
dog = Dog.new(
        name: "Tommy",
        age: 2,
        size: "small",
        breed: "Jack Russel",
        user: user,
        address: "2 Mastmaker Rd, London E14 9AW",
        description: "The cutest dog in the world",
        likes: 5,
        gender: "male"
)
dog.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
dog.save!

file = URI.open("https://images.unsplash.com/photo-1534628854350-62b395c4a2c0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80")
dog = Dog.new(
        name: "Axel",
        age: 2,
        size: "medium",
        breed: "German Sheppard",
        user: user,
        address: "2 Mastmaker Rd, London E14 9AW",
        description: "The cutest dog in the world",
        likes: 3,
        gender: "female"
)
dog.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
dog.save!


user = User.create!(
          email: "walker@gmail.com",
          password: "123456",
          first_name: "Walker",
          last_name: "Only",
          description: "While there can be profile blurbs for companies and websites",
          owner: false,
          poochies: 3
)

puts 'Finish!'
