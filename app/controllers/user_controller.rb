class UserController < ApplicationController
    def show
      @user = User.find(current_user.id) #on affiche le profil de la personne connecté (current user)
    end
end
