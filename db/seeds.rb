# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
response = open(url).read
ingredients = JSON.parse(response)['drinks']

#decided not to use the ingredients in the JSON.

Ingredient.create(name: "Rum")
Ingredient.create(name: "Lemon Juice")
Ingredient.create(name: "Lemon")
Ingredient.create(name: "Syrup")
Ingredient.create(name: "Mint Leaf")
Ingredient.create(name: "Light Rum")
Ingredient.create(name: "Lime Juice")
Ingredient.create(name: "Soda Water")
Ingredient.create(name: "Vodka")
Ingredient.create(name: "Tomato Juice")
Ingredient.create(name: "Worcestershire Sauce")
Ingredient.create(name: "Hot Sauce")
Ingredient.create(name: "Horseradish")
Ingredient.create(name: "Ground Black Pepper")
Ingredient.create(name: "Salt")
Ingredient.create(name: "Celery")

