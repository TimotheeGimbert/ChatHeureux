class Order < ApplicationRecord
  belongs_to :user
  has_many :join_table_item_orders
  has_many :orders, through: :join_table_item_orders
end
