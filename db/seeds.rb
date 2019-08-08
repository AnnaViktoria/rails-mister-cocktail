require 'open-uri'
require 'json'


Ingredient.destroy_all
request_uri = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
request_query = ''
url = "#{request_uri}#{request_query}"
buffer = open(url).read

ingredients = JSON.parse(buffer)["drinks"]

ingredients.each do |ingredient|
 Ingredient.create(name: ingredient['strIngredient1'])
end

# Ingredient.create(name: "Lemon")
# Ingredient.create(name: "Ice")
# Ingredient.create(name: "Mint leaves")
# Ingredient.create(name: "Light rum")
# Ingredient.create(name: "Applejack")
# Ingredient.create(name: "Gin")
# Ingredient.create(name: "Dark rum")
# Ingredient.create(name: "Sweet Vermouth")
# Ingredient.create(name: "Strawberry schnapps")
# Ingredient.create(name: "Scotch")
# Ingredient.create(name: "Apricot brandy")
# Ingredient.create(name: "Triple sec")
# Ingredient.create(name: "Southern Comfort")
# Ingredient.create(name: "Orange bitters")
# Ingredient.create(name: "Brandy")
# Ingredient.create(name: "SLemon vodka")
# Ingredient.create(name: "Dry Vermouth")
# Ingredient.create(name: "Amaretto")
# Ingredient.create(name: "Tea")
# Ingredient.create(name: "Champagne")
