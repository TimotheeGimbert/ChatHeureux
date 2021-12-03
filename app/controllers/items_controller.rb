class ItemsController < ApplicationController
include ItemsHelper
before_action :nbr_of_items_in_cart
before_action :is_admin?, only: [:new, :create, :edit, :update, :destroy]
  def index
    if params[:category_id] != nil then
       @items = []
       Item.all.each do |item|
        item.categories.each do |category|
          if category.id == params[:category_id].to_i then
            @items.push(item)
          end
        end
       end 
       @items
    else
      @items = Item.all
    end
    
    @categories = Category.all
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
    puts "$"*100
    @item = Item.find_by(id: params[:id])
    puts params
    new_title = params[:item][:title]
    puts new_title
    @item.title = new_title 
    @item.save
    redirect_back fallback_location: pages_administration_path
  end

  def destroy
    @item = Item.find(params[:item_id])
    @item.destroy
    redirect_to root_path
  end

  private 

  def modify_title
    params.require(:item).permit(:title)
  end

end
