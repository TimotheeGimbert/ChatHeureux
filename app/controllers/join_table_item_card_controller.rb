class JoinTableItemCardController < ApplicationController

  def new
    @cart = Cart.find_by(id: params[:cart_id])
    @item_in_cart = JoinTableItemCart.new
  end

  def create
    @item_in_cart = JoinTableItemCart.new(user_id: params[:current_user_id])
    if @item_in_cart.save 
      redirect_to root_path
    else
      flash.now[:danger] = 'Invalid cart parameters !'
    end
  end

  private
  def parameters
    params.require(:join_table_item_carts).permit(:item_id, :card_id)
  end 
end
