require 'json'
require 'open-uri'

Ingredient.destroy_all

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
url_serialized = open(url).read
ingredients = JSON.parse(url_serialized)
ingredients_array = ingredients['drinks']
ingredients_array.each do |ingredient|
  ingredient_name = ingredient['strIngredient1']
  Ingredient.create(name: ingredient_name)
end
