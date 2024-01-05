class RecipesController < ApplicationController
  before_action :set_recipe, only: %i[ show update destroy ]

  def index
    @recipes = Recipe.all
  end

  def filter
    @recipes = Recipe.where(user_id: params[:user_id])
    render json: @recipes
  end

  def search
  #los usuarios podran buscar recetas por nombre de platillo o ingredietntes
    @recipes = Recipe.where("dish LIKE ? OR ingredient LIKE ?", "%#{params[:dish]}%", "%#{params[:ingredient]}%")
    # @recipes = Recipe.where("dish LIKE ?", "%#{params[:dish]}%" )
    render json: @recipes
  end

  def show
  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      render :show, status: :created, location: @recipe
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  def update
    if @recipe.update(recipe_params)
      render :show, status: :ok, location: @recipe
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end


  def destroy
    @recipe.destroy
  end

  private
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    def recipe_params
      params.require(:recipe).permit(:description, :dish, :category, :fruit, :ingredient, :spice, :vegetables, :image, :user_id)
    end
end
