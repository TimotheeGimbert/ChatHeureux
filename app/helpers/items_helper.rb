module ItemsHelper
  #on va récupérer le nombre d'articles dans le panier
  def nbr_of_items_in_cart
    if current_user != nil 
      @items_in_cart = JoinTableItemCart.where(cart_id:current_user.cart.id)
    end 
  end 
end
