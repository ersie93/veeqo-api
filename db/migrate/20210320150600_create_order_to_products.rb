class CreateOrderToProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :order_to_products do |t|

      t.timestamps
    end
  end
end
