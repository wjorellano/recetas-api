# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)




# Crear recetas falsas asociadas a usuarios existentes

3.times do
   recipe = Recipe.create(
      dish: Faker::Food.dish,
      description: Faker::Food.description,
      fruit: Faker::Food.fruits,
      ingredient: Faker::Food.ingredients,
      spice: Faker::Food.spice,
      vegetables: Faker::Food.vegetables,
      user_id: "W5xyDnF3A0S6DiCy7aZPDgJL5P22"
   )
end