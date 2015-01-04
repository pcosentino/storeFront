class CategoriesController < ApplicationController



	def show
    @category = Shoppe::ProductCategory.find_by_permalink(params[:permalink])

  end

end
