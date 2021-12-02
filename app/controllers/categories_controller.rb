class CategoriesController < ApplicationController
  before_action :is_admin?, only: [:update]

    def update
      category = Category.find_by(id: params[:id])
      category.name = params[:category][:name]
      category.save
      redirect_back fallback_location: pages_administration_path
    end
    
end 