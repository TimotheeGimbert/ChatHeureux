class CategoriesController < ApplicationController
  before_action :is_admin?, only: [:update]

    def update
      
    end
    
end