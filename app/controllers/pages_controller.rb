class PagesController < ApplicationController
  def index
    @items = Item.all.sample(3)
  end

  def presentation
  end

  def contact
  end
end
