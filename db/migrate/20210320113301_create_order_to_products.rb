class CreateOrderToProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :orders_to_products do |t|
      t.integer :quantity
      t.references :product, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true
      t.integer :unit_price

      t.timestamps
    end
  end
end
