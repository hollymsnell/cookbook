class RecipesController < ApplicationController

  def index
    recipes = Recipe.all
    render json:recipes.as_json
  end

  def create
    recipe = Recipe.new(
      name: params[:name],
      ingredients: params[:ingredients],
      instructions: params[:instructions],
      prep_minutes: params[:prep_minutes],
      cook_minutes: params[:cook_minutes]
    )
    recipe.save
    render json: recipe.as_json
  end

  def show
    recipe = Recipe.find_by(id: params[:id])
    render json: recipe.as_json
  end

  def update
    recipe = Recipe.find_by(id: params[:id])
    recipe.name = params[:name] || recipe.name
    recipe.ingredients = params[:ingredients] || recipe.ingredients
    recipe.instructions = params[:instructions] || recipe.instructions
    recipe.prep_minutes = params[:prep_minutes] || recipe.prep_minutes
    recipe.cook_minutes = params[:cook_minutes] || recipe.cook_minutes
    recipe.save
    render json: recipe.as_json
  end

  def destroy
    recipe = Recipe.find_by(id: params[:id])
    recipe.destroy
    render json: {message: "Recipe Vanished."}
  end

end
