# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
puts "start"
puts "destroy old users"
User.destroy_all
puts "create users"
py = User.create!(email: 'py@gmail.com', password: 'azerty', nickname: "PY", photo_id_url: "https://images.unsplash.com/photo-1532731222443-b3ef89fbc50d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YW5pbWFsJTIwcG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
marin = User.create!(email: 'm@gmail.com', password: 'azerty', nickname: "Marin", photo_id_url: "https://images.unsplash.com/photo-1604605152447-1fcea1a333f3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")
manu = User.create!(email: 'mm@gmail.com', password: 'azerty', nickname: "Manu", photo_id_url: "https://images.unsplash.com/photo-1617419849063-cdd02841550d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80")
felix = User.create!(email: 'f@gmail.com', password: 'azerty', nickname: "Felix", photo_id_url: "https://images.unsplash.com/photo-1512636998392-acdc97b72114?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")
puts "destroy old studios"
Studio.destroy_all
puts "create studios"
studio1 = Studio.create!(address: "lille", title: "Crazy Metal Studio", description: "Premium studio
  facility private in the most desirable spot in town.", price: 100, user_id: felix.id,
  photo_url:"https://images.unsplash.com/photo-1511379938547-c1f69419868d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bXVzaWMlMjBzdHVkaW98ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
Studio.create!(address: "lille", title: "Small but Cozy Studio", description: "Artist
  and producers that have worked here: Swae Lee, Partynextdoor, Chief Keef, Danileigh, Bigheadonthebeat,
  Lil Mosey, Yung Pinch, Lil Tracy, Christian Combs, Bella Thorne...", price: 150, user_id: marin.id,
  photo_url:"https://images.unsplash.com/photo-1632582204758-5ac65783517a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fG11c2ljJTIwc3R1ZGlvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60")
Studio.create!(address: "Paris", title: "The Dandy Studio", description: "Through meticulous
  attention-to-detail, our goal is to provide all the creative resources for you to write, produce, mix, or
  master your next hit record.", price: 150, user_id: marin.id, photo_url:"https://images.unsplash.com/photo-1535406208535-1429839cfd13?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8bXVzaWMlMjBzdHVkaW98ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
Studio.create!(address: "Londres", title: "The Great Place Studio", description: "Intimate studio
  space with mood lighting and amenities such as a tv, playstation, fridge and snacks. Smoke friendly.",
  price: 250, user_id: manu.id, photo_url:"https://images.unsplash.com/photo-1548502632-6b93092aad0b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bXVzaWMlMjBzdHVkaW98ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
studio2 = Studio.create!(address: "kingston", title: "Reggae Master Studio", description: "We provide top of
  the line equipment at some of the most affordable prices.", price: 80,
  user_id: py.id, photo_url:"https://images.unsplash.com/photo-1574882225022-9e0e447e9662?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fG11c2ljJTIwc3R1ZGlvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60")


  puts "destroy old bookings"
  Booking.destroy_all
  puts "create bookings"
  Booking.create!(studio_id: studio1.id, user_id: marin.id )
  Booking.create!(studio_id: studio2.id, user_id: felix.id )

puts "C'est tout bon les gars!"
