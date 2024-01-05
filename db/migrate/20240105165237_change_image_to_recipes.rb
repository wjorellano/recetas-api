class ChangeImageToRecipes < ActiveRecord::Migration[7.0]
  def change
    change_column :recipes, :image, :string, default: 'https://i.pinimg.com/564x/06/1f/56/061f5662a6955cda86b5f51e3e58205d.jpg'
  end
end
