class AddBoxIdToWidgets < ActiveRecord::Migration
  def change
    add_column :widgets, :box_id, :integer

  end
end
