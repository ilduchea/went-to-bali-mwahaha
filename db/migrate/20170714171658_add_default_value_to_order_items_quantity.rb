class AddDefaultValueToOrderItemsQuantity < ActiveRecord::Migration[5.0]
  def change
    remove_column :order_items, :quantity
    add_column :order_items, :quantity, :integer, default: 1
  end
end
