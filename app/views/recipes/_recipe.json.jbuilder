json.extract! recipe, :id, :dish, :description, :category, :fruit, :ingredient, :spice, :vegetables, :image, :user_id, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
