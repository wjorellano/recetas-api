# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)




# Crear recetas falsas asociadas a usuarios existentes

10.times do
   recipe = Recipe.create(
      dish: Faker::Food.dish,
      description: Faker::Food.description,
      # category: Faker::Food.ethnic_category,
      fruit: Faker::Food.fruits,
      ingredient: Faker::Food.ingredients,
      spice: Faker::Food.spice,
      vegetables: Faker::Food.vegetables,
      # image: Faker::LoremFlickr.image(size: "400x400", search_terms: ['food']),
      user_id: "syzUgkDxiJXFB8e148ZcGjecNYW2"
   )
end