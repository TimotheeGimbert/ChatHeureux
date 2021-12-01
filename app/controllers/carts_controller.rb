class CartsController < ApplicationController
include CartsHelper
before_action :is_sign?, :only_current_cart

  def show
    @items_in_cart = JoinTableItemCart.where(cart_id:current_user.cart.id) #on va allé chercher dans la table de jointure les entrées ou le panier utilisé est le même que celui de la personne connecté, puis va enregistrer les entrées dans cette variable
  end

  def create
    
  end

  def update

  end 

  def destroy

  end 
  
end
