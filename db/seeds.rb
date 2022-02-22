# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
puts "start"
puts "destroy users"
User.destroy_all
puts "create users"
user1 = User.create!(email: 'coucoucou@gmail.com', password: 'azerty')
user2 = User.create!(email: 'olala@gmail.com', password: 'azerty')
puts "destroy studios"
Studio.destroy_all
puts "create studios"
Studio.create!(address: "lille", title: "Metal folies", description: "lorem ipsum blabla", price: 100, user_id: user1.id, photo_url:"https://images.unsplash.com/photo-1511379938547-c1f69419868d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bXVzaWMlMjBzdHVkaW98ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
Studio.create!(address: "lille", title: "super", description: "lorem ipsum blabla", price: 150, user_id: user1.id, photo_url:"https://images.unsplash.com/photo-1632582204758-5ac65783517a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fG11c2ljJTIwc3R1ZGlvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60")
Studio.create!(address: "Paris", title: "Dandy", description: "lorem ipsum blabla", price: 150, user_id: user1.id, photo_url:"https://images.unsplash.com/photo-1535406208535-1429839cfd13?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8bXVzaWMlMjBzdHVkaW98ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
Studio.create!(address: "Londres", title: "Great place", description: "lorem ipsum blabla", price: 250, user_id: user2.id, photo_url:"https://images.unsplash.com/photo-1548502632-6b93092aad0b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bXVzaWMlMjBzdHVkaW98ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
Studio.create!(address: "kingston", title: "Reggae master", description: "lorem ipsum blabla", price: 80, user_id: user2.id, photo_url:"https://images.unsplash.com/photo-1574882225022-9e0e447e9662?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fG11c2ljJTIwc3R1ZGlvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60")
puts "finished"
