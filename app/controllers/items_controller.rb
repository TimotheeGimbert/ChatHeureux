class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show
    @item = Item.find_by(id: params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(title: params[:title], description: params[:description], price: params[:price], image_url: params[:image_url])
    if @item.save 
      # redirect_to root_path
    else
      flash.now[:danger] = 'Invalid item parameters !'
    end
  end

  def edit

  end

  def update

  end

  def delete

  end

end
