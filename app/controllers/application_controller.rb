class ApplicationController < ActionController::Base
include ApplicationHelper #ici on fait appel au helper Application
  after_action :create_cart_and_assign_to_current_user, only:[:create] #on fait appel a la méthode indiquée dans le ApplicationHelper après une méthode create

  def is_admin?
    redirect_to root_path unless current_user.is_admin == true
  end
end
