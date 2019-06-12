class StaticPagesController < ApplicationController
  def home
		if params[:name]
    	@recipes = Recipe.where('name LIKE ?', "%#{params[:name]}%")
  	else
    	@recipes = Recipe.all
  	end
  end

  def help
  end

  def about
  end

	def contact
	end
end
