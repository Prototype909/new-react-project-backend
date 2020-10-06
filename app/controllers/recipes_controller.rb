class RecipesController < ApplicationController

    def index
        recipes = Recipe.all 
        render json: RecipeSerializer.new(recipes)
    end

    def create
        recipe = Recipe.create(recipe_params)
        render json: RecipeSerializer.new(recipe)
    end

    def show
        recipe = Recipe.find_by(id: params[:id])
        render json: RecipeSerializer.new(recipe)
    end

    private

    def recipe_params
        params.require(:recipe).permit(:title, :text, :image_link)
    end
end