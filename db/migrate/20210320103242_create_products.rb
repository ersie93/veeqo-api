class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.float :width
      t.float :height
      t.float :depth
      t.string :dimensions_unit
      t.text :description
      t.integer :stock

      t.timestamps
    end
  end
end
