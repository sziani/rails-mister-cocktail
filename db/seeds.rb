# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

puts "Destroy Cocktail & Ingredient"

Cocktail.destroy_all
Ingredient.destroy_all

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
user_serialized = open(url).read
user = JSON.parse(user_serialized)
puts "Create Cocktails"

# puts user["drinks"][0]["strIngredient1"]

cocktailOne = 'mojito'
urlOne = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=#{cocktailOne}"
readOne = open(urlOne).read
userOne = JSON.parse(readOne)


mojito = Cocktail.new(name: "Mojito")
file = URI.open(userOne["drinks"][0]["strDrinkThumb"])
mojito.photo.attach(io: file, filename: 'mojito.png', content_type: 'image/png')
mojito.save

cocktailTwo = 'bloody mary'
urlTwo = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=#{cocktailTwo}"
readTwo = open(urlTwo).read
userTwo = JSON.parse(readTwo)


bloodymary = Cocktail.new(name: "Bloody Mary")
fileTwo = URI.open(userTwo["drinks"][0]["strDrinkThumb"])
bloodymary.photo.attach(io: fileTwo, filename: 'bloodymary.png', content_type: 'image/png')
bloodymary.save

cocktailThree = 'spritz'
urlThree = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=#{cocktailThree}"
readThree = open(urlThree).read
userThree = JSON.parse(readThree)


spritz = Cocktail.new(name: "Spritz")
fileThree = URI.open(userThree["drinks"][0]["strDrinkThumb"])
spritz.photo.attach(io: fileThree, filename: 'spritz.png', content_type: 'image/png')
spritz.save

cocktailFour = 'pina colada'
urlFour = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=#{cocktailFour}"
readFour = open(urlFour).read
userFour = JSON.parse(readFour)


pinacolada = Cocktail.new(name: "Pina Colada")
fileFour = URI.open(userFour["drinks"][0]["strDrinkThumb"])
pinacolada.photo.attach(io: fileFour, filename: 'pinacolada.png', content_type: 'image/png')
pinacolada.save

cocktailFive = 'long island'
urlFive = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=#{cocktailFive}"
readFive = open(urlFive).read
userFive = JSON.parse(readFive)


longisland = Cocktail.new(name: "Long Island")
fileFive = URI.open(userFive["drinks"][0]["strDrinkThumb"])
longisland.photo.attach(io: fileFive, filename: 'longisland.png', content_type: 'image/png')
longisland.save

cocktailSix = 'moscow mule'
urlSix = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=#{cocktailSix}"
readSix = open(urlSix).read
userSix = JSON.parse(readSix)


moscowmule = Cocktail.new(name: "Moscow Mule")
fileSix = URI.open(userSix["drinks"][0]["strDrinkThumb"])
moscowmule.photo.attach(io: fileSix, filename: 'moscowmule.png', content_type: 'image/png')
moscowmule.save

cocktailSeven = 'cosmopolitan'
urlSeven = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=#{cocktailSeven}"
readSeven = open(urlSeven).read
userSeven = JSON.parse(readSeven)


cosmopolitan = Cocktail.new(name: "Cosmopolitan")
fileSeven = URI.open(userSeven["drinks"][0]["strDrinkThumb"])
cosmopolitan.photo.attach(io: fileSeven, filename: 'cosmopolitan.png', content_type: 'image/png')
cosmopolitan.save

cocktailEight = 'caipirinha'
urlEight = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=#{cocktailEight}"
readEight = open(urlEight).read
userEight = JSON.parse(readEight)


caipirinha = Cocktail.new(name: "Caipirinha")
fileEight = URI.open(userEight["drinks"][0]["strDrinkThumb"])
caipirinha.photo.attach(io: fileEight, filename: 'caipirinha.png', content_type: 'image/png')
caipirinha.save

cocktailNine = 'margarita'
urlNine = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=#{cocktailNine}"
readNine = open(urlNine).read
userNine = JSON.parse(readNine)


margarita = Cocktail.new(name: "Margarita")
fileNine = URI.open(userNine["drinks"][0]["strDrinkThumb"])
margarita.photo.attach(io: fileNine, filename: 'margarita.png', content_type: 'image/png')
margarita.save

puts "Create Ingredients"

user["drinks"].each do |user|
  ingredient = Ingredient.new(name: user["strIngredient1"])
  ingredient.save
end


puts "Finished"
