class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes, id: :uuid do |t|
      t.string :dish
      t.text :description
      t.string :category
      t.string :fruit
      t.string :ingredient
      t.string :spice
      t.string :vegetables
      t.string :image
      t.string :user_id

      t.timestamps
    end
  end
end
