class JoinTableItemCardController < ApplicationController
  private
  def parameters
    params.require(:join_table_item_carts).permit(:item_id, :card_id)
  end 
end
