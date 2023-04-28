# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create({username: "jdoe", password: "password123", email: "jdoe@gmail.com", first_name: "john", last_name: "doe" })
User.create({username: "username1", password: "password123", email: "user@username.com", first_name: "user", last_name: "name"})

