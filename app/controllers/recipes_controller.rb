class RecipesController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
	before_action :correct_user,   only: :destroy

	def new
		@recipe = Recipe.new
		@user = current_user
	end

  def create
    @recipe = current_user.recipes.build(recipe_params)
    if @recipe.save
      flash[:success] = "Recipe created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

	def index
		if params[:name]
    	@recipes = Recipe.where('name LIKE ?', "%#{params[:name]}%")
  	else
    	@recipes = Recipe.all
  	end
	end

	def show
		@recipe = Recipe.find(params[:id])
	end

	def destroy
		@recipe.destroy
		flash[:success] = "Recipe deleted"
		redirect_to root_url
	end

  private

    def recipe_params
      params.require(:recipe).permit(:ingredients, :picture, :name, :method)
    end

		def correct_user
			@recipe = current_user.recipes.find_by(id: params[:id])
			redirect_to root_url if @recipe.nil?
		end
end
