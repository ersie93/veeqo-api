class AddWeightAndUnitsToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :weight_grams, :float
    add_column :products, :weight_unit, :float
  end
end
