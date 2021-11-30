class OrdersController < ApplicationController

  def show
    @order = Order.find_by(id: params[:id])
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(price: params[:price], user_id: params[:user_id], stripe_id: "#########")
    if @order.save 
      # redirect_to root_path
    else
      flash.now[:danger] = 'Invalid order parameters !'
    end
  end

end