class PagesController < ApplicationController
  before_action :is_admin?, only: [:administration]

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
      @users = User.all.sort
      @items = Item.all.sort
      @categories = Category.all.sort
      @orders = Order.all.sort
  end
end
