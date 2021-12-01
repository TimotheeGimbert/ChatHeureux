module CartsHelper
  private
  #créer une méthode pour éviter que quelqu'un de non connecté ait un panier
  def is_sign?
    if current_user != nil #si l'utilisateur n'est pas connecté
      redirect_to new_user_session_path #il sera redirigé sur la page login/sign in
    end
  end 
  #méthode qui empêche d'avoir accès au panier des autres utilisateurs via le lien html
  def only_current_cart
    if current_user != nil && current_user.cart.id != params[:id].to_i #si l'utilisateur est connecté et que l'id du panier ne correspond pas a l'id de son panier
      return redirect_to cart_path(current_user.cart.id) #il est redirigé vers son panier 
    end 
end
