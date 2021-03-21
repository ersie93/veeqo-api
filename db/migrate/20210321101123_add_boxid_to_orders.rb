class AddBoxidToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :box_id, :integer
  end
end
