# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(username: "test", password: "test", age: "30")
monday = Monday.create(name: "Leisure Time", details: "Play some games or watch some anime", time: "10:00 AM" )
monday2 = Monday.create(name: "Exercise", details: "Head to the gym and get swol", time: "12:00 PM")
monday3 = Monday.create(name: "Movie Date", details: "Check out the new Spiderman with the Wife", time: "3:00 PM")
monday4 = Monday.create(name: "Dinner Date", details: "Noms", time: "6:00 PM")
monday5 = Monday.create(name: "Gaming with the boys", details: "The Boys!!!!", time: "8:30 PM")