class CreateJoinTableItemCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :join_table_item_carts do |t|
      t.integer :quantity
      t.references :item, null: false, foreign_key: true
      t.references :cart, null: false, foreign_key: true

      t.timestamps
    end
  end
end
