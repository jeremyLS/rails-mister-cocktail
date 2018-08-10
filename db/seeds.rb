# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cocktail.destroy_all
Ingredient.destroy_all

i1 = Ingredient.create!(name: "lemon")
i2 = Ingredient.create!(name: "ice")
i3 = Ingredient.create!(name: "mint leaves")


c1 = Cocktail.create!(name: "white russian")
c2 = Cocktail.create!(name: "walk of shame")
c3 = Cocktail.create!(name: "absolute swag")

Dose.create!(description: "6cl", cocktail: c1, ingredient: i1)
Dose.create!(description: "8cl", cocktail: c2, ingredient: i2)
Dose.create!(description: "4cl", cocktail: c3, ingredient: i3)


url = "http://cdn1-www.mandatory.com/assets/uploads/2015/07/man_file_1060278_drunk+guy.jpg"
cocktail = Cocktail.new(name: 'lol')
cocktail.remote_photo_url = url
cocktail.save
