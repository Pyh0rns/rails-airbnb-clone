# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
puts "start"


User.create!(email: 'coucou@gmail.com', password: 'azerty' )
User.create!(email: 'ola@gmail.com', password: 'azerty')

Studio.create(address: "lille", title: "Metal folies", description: "lorem ipsum blabla", price: 100, user_id: 1)
Studio.create(address: "lille", title: "super", description: "lorem ipsum blabla", price: 150, user_id: 1)
Studio.create(address: "Paris", title: "Dandy", description: "lorem ipsum blabla", price: 150, user_id: 1)
Studio.create(address: "Londres", title: "Great place", description: "lorem ipsum blabla", price: 250, user_id: 1)
Studio.create(address: "kingston", title: "Reggae master", description: "lorem ipsum blabla", price: 80, user_id: 1)

puts "finished"
