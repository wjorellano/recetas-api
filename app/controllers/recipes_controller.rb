class RecipesController < ApplicationController
  before_action :set_recipe, only: %i[ show update destroy ]

  def index
    @recipes = Recipe.all
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
