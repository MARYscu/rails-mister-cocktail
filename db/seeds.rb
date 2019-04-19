# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
require "json"

Ingredient.destroy_all
Cocktail.destroy_all

file = open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read
data_hash = JSON.parse(file)
data_hash["drinks"].each do |ingredient|
  i = Ingredient.create(name: ingredient["strIngredient1"])
  puts "create #{i.name}"
end

Cocktail.create!(name: 'Irish Coffee')
Cocktail.create!(name: 'Boulevardier')
Cocktail.create!(name: 'Negroni')
Cocktail.create!(name: 'whiskey Sour')
Cocktail.create!(name: 'Manhattan')
