class UsersController < ApplicationController
    def show
      @user = User.find(current_user.id) #on affiche le profil de la personne connecté (current user)
    end

    def index
      @users = User.all
    end

    def update
      user = User.find_by(id: params[:id])
    end
    
end
