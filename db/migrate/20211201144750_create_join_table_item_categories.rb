class CreateJoinTableItemCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :join_table_item_categories do |t|
      t.references :item, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
