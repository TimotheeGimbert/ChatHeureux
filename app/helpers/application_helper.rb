module ApplicationHelper
  #la méthode va permettre de créer un panier et de l'assigné a un utilisateur connecté SI celui ci n'en n'a pas déjà un 
  def create_cart_and_assign_to_current_user
    if current_user != nil && current_user.cart == nil #si utilisateur connecté sans panier
      cart = Cart.create(user: current_user)
    end
  end    
end
