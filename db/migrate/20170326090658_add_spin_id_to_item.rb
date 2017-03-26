class AddSpinIdToItem < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :spin_id, :integer
  end
end
