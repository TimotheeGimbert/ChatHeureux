class CartsController < ApplicationController
include CartsHelper
# before_action :is_sign?, :only_current_cart

  def new
    @cart = Cart.new
  end

  def show
    cart = Cart.find_by(id: params[:id])
    @cart_amount = 0
    cart.items.each{|item| @cart_amount += item.price}
    cart_items = cart.items.uniq
    cart_items_quantity = []
    cart_items.each do |item|
      quantity = cart.items.where(id: item.id).length
      cart_items_quantity.push({item: item, quantity: quantity})
    end
    @items_in_cart = []
    @items_in_cart = cart_items_quantity
    @items = Item.all.sample(3)
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
