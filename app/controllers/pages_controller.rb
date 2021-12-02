class PagesController < ApplicationController

  def index
    @items = Item.all.sample(3)
    if current_user && !current_user.profile
      redirect_to new_profile_path
    end
  end

  def presentation
  end

  def contact
  end

  def administration
    if current_user.is_admin != true
      redirect_to root_path
    else
      @users = User.all.sort
    end
  end
end
