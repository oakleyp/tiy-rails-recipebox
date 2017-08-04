# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

recipes = Recipe.create(
  { title: "Beer", description: "An alcoholic beverage, made from malted cereal grain, flavored with hops, and brewed by slow fermentation. The English word “beer” comes from the Latin “bibere” meaning, “to drink”. Mainly, beer is made from malted barley, hops, yeast and water.", steps: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\nAliquam tincidunt mauris eu risus.\nVestibulum auctor dapibus neque.\nNunc dignissim risus id metus.\nCras ornare tristique elit.", ingredients_id: nil, images_id: nil, preptime: "3 hrs", cooktime: "Weeks", calories: "150", source: "God"})
  