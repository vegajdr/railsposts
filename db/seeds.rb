# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create!(first_name: "Jorge", last_name: "Ramirez", password: "hunter2")
user2 = User.create!(first_name: "David", last_name: "Vega", password: "password")

user.posts.create!(title: "First User", content: "Random test content for the tweet")

user2.posts.create!(title: "User 2", content: "Tweet from second account")
