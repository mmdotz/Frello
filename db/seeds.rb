# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Board.create({
#   name: "job board",
#   setting: "public",
#   user_id: 3
#   })
#
# Board.create({
#   name: "surf board",
#   setting: "public",
#   user_id: 3
#   })
#
# Board.create({
#   name: "snow board",
#   setting: "public",
#   user_id: 3
#   })
#
# Board.create({
#   name: "wake board",
#   setting: "private",
#   user_id: 3
#   })
#
# Board.create({
#   name: "friend board",
#   setting: "public",
#   user_id: 3
#   })

board = Board.create({
   name: "Working board",
   setting: "public",
   user_id: 4
   })

Card.create({
  title: "Get email address",
  description: "sign up for an account on google",
  board_id: board.id
  })
