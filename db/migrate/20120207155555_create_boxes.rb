class CreateBoxes < ActiveRecord::Migration
  def change
    create_table :boxes do |t|
      t.string :material
      t.string :color
      t.integer :order_id

      t.timestamps
    end
  end
end
