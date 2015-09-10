# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

games = [
  {
    name: "Fallout 4",
    photo_url: "http://assets1.ignimgs.com/2015/06/05/fallout4kjpg-64b4f3.jpg",
    genre: "RPG",
    studio: "Bethesda",
    release_date: "10 Nov 2015"
  },
  {
    name: "Destiny",
    photo_url: "http://static.trustedreviews.com/94/00002d149/a4fb/Destiny.jpg",
    genre: "FPS",
    studio: "Activision",
    release_date: "9 Sep 2014"
  }
]
Game.create(games)