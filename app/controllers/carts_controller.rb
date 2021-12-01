class CartsController < ApplicationController
include CartsHelper
# before_action :is_sign?, :only_current_cart

  def new
    @cart = Cart.new
  end

  def show
    cart = Cart.find_by(id: params[:id])
    @items_in_cart = []
    @items_in_cart = cart.items
    puts "#"*30
    p cart
    puts "#"*30
  end

  def create
    @cart = Cart.new(user_id: params[:current_user_id])
    if @cart.save 
      redirect_to root_path
    else
      flash.now[:danger] = 'Invalid cart parameters !'
    end
  end

  def update

  end 

  def destroy

  end 

end
