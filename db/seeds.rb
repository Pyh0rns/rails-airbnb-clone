# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
puts "start"
puts "destroy old bookings"
Booking.destroy_all
puts "destroy old studios"
Studio.destroy_all
puts "destroy old users"
User.destroy_all
puts "destroy old reviews"
Review.destroy_all
puts "create users"
py = User.create!(email: 'py@gmail.com', password: 'azerty', nickname: "PY", bio: "Tv guru. Web buff. Wannabe travel expert. Unapologetic internet enthusiast. Professional food fan.", photo_id_url: "https://images.unsplash.com/photo-1597223557154-721c1cecc4b0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fGZhY2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
marin = User.create!(email: 'm@gmail.com', password: 'azerty', nickname: "Marin", bio: "Internet ninja. Music fanatic. Typical social mediaholic. Thinker. Reader. Passionate coffee enthusiast. Alcohol aficionado.", photo_id_url: "https://images.unsplash.com/photo-1531746020798-e6953c6e8e04?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjV8fGZhY2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
manu = User.create!(email: 'mm@gmail.com', password: 'azerty', nickname: "Manu", bio: "Internet buff. Beer guru. Travel enthusiast. Bacon advocate. Freelance entrepreneur. Award-winning organizer.", photo_id_url: "https://images.unsplash.com/photo-1499996860823-5214fcc65f8f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZmFjZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60")
felix = User.create!(email: 'f@gmail.com', password: 'azerty', nickname: "Felix", bio: "Friendly twitter geek. Zombie lover. Coffee ninja. Typical tv trailblazer. Hipster-friendly internet buff. Hardcore problem solver.", photo_id_url: "https://images.unsplash.com/photo-1542909168-82c3e7fdca5c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZmFjZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60")

puts "create studios"
studio1 = Studio.create!(address: "12 rue saint sebastien, lille", title: "Crazy Metal Studio", description: "Premium studio
  facility private in the most desirable spot in town. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", price: 100, user_id: felix.id,
  photo_url:"https://images.unsplash.com/photo-1511379938547-c1f69419868d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bXVzaWMlMjBzdHVkaW98ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
Studio.create!(address: "2 avenue des saules, lille", title: "Small but Cozy Studio", description: "Artist
  and producers that have worked here: Swae Lee, Partynextdoor, Chief Keef, Danileigh, Bigheadonthebeat,
  Lil Mosey, Yung Pinch, Lil Tracy, Christian Combs, Bella Thorne... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", price: 150, user_id: marin.id,
  photo_url:"https://images.unsplash.com/photo-1632582204758-5ac65783517a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fG11c2ljJTIwc3R1ZGlvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60")
Studio.create!(address: "17 rue de la butte aux cailles, Paris", title: "The Dandy Studio", description: "Through meticulous
  attention-to-detail, our goal is to provide all the creative resources for you to write, produce, mix, or
  master your next hit record. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", price: 150, user_id: marin.id, photo_url: "https://images.unsplash.com/photo-1535406208535-1429839cfd13?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8bXVzaWMlMjBzdHVkaW98ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
studio3 = Studio.create!(address: "12 avenue des Champs Elysées, paris", title: "The Great Place Studio", description: "Intimate studio
  space with mood lighting and amenities such as a tv, playstation, fridge and snacks. Smoke friendly. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  price: 250, user_id: manu.id, photo_url: "https://images.unsplash.com/photo-1548502632-6b93092aad0b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bXVzaWMlMjBzdHVkaW98ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
studio2 = Studio.create!(address: "rue du chateau, brest", title: "Reggae Master Studio", description: "We provide top of
  the line equipment at some of the most affordable prices. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", price: 80,
  user_id: py.id, photo_url: "https://images.unsplash.com/photo-1574882225022-9e0e447e9662?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fG11c2ljJTIwc3R1ZGlvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60")

puts "create bookings"
Booking.create!(studio_id: studio1.id, user_id: marin.id, status: "accepted", start_date: '2022-02-27', end_date: '2022-02-28', comment: "Been here before, amazing! Cant wait to come back" )
Booking.create!(studio_id: studio2.id, user_id: marin.id, status: "declined", start_date: '2022-04-28', end_date: '2022-04-29', comment: "Could you please get a couple beers in the fridge before we arrive? Thanks" )
Booking.create!(studio_id: studio2.id, user_id: manu.id, start_date: '2022-02-27', end_date: '2022-02-29', comment: "We will arrive very early, around 06:00." )
Booking.create!(studio_id: studio3.id, user_id: py.id, start_date: '2022-03-01', end_date: '2022-03-03', comment: "We would like to have a place to store our instruments during the night." )
Booking.create!(studio_id: studio3.id, user_id: felix.id, start_date: '2022-03-10', end_date: '2022-03-11', comment: "Can you please get a parking spot for us, we have a big tour bus. Cheers" )

puts "create reviews"
Review.create!(comment: "horrible", rating: 1, studio_id: studio3.id, user_id: marin.id)
Review.create!(comment: "awesome", rating: 5, studio_id: studio3.id, user_id: py.id)
Review.create!(comment: "very nice owner", rating: 5, studio_id: studio3.id, user_id: felix.id)
Review.create!(comment: "good place", rating: 4, studio_id: studio3.id, user_id: felix.id)

puts "C'est tout bon les gars!!"
