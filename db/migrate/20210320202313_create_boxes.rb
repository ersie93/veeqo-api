class CreateBoxes < ActiveRecord::Migration[6.1]
  def change
    create_table :boxes do |t|
      t.string :name
      t.float :width
      t.float :height
      t.float :depth
      t.float :weight_resistance

      t.timestamps
    end
  end
end
