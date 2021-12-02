class CategoriesController < ApplicationController
  before_action :is_administrator?, only: [:update]

    def update
      
    end
    
end