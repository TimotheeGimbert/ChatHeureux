class OrdersController < ApplicationController

  def show
    @order = Order.find_by(id: params[:id])
  end

  def new
    order = Order.new
    order.user = current_user
    order.save
    items = current_user.cart.items 
    items.each do |item|
      JoinTableItemOrder.create(order: order, item: item, quantity: 1)
    end
    current_user.cart.destroy
    current_user.cart = Cart.new
    current_user.cart.save
    redirect_to order_path(order)
  end

  def create
    @order = Order.new(price: params[:price], user_id: params[:user_id], stripe_id: "#########")
    
    if @order.save 
      # redirect_to root_path
    else
      flash.now[:danger] = 'Invalid order parameters !'
    end
  end

  def update

  end

end