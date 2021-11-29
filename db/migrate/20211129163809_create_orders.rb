class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.datetime :validation_date
      t.decimal :price
      t.references :user, null: false, foreign_key: true
      t.string :stripe_id
      t.timestamps
    end
  end
end
