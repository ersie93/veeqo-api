class AddWeightAndUnitsToProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :weight_grams, :float
    add_column :products, :weight_unit, :float
  end
end
