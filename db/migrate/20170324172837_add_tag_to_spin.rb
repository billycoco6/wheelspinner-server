class AddTagToSpin < ActiveRecord::Migration[5.0]
  def change
    add_column :spins, :tag, :text
  end
end
