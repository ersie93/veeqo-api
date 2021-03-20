class CreateOrderToProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :order_to_products do |t|
      t.integer :quantity
      t.references :product, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true
      t.integer :unit_price

      t.timestamps
    end
  end
end
