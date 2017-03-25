class RemoveDescriptionFromSpin < ActiveRecord::Migration[5.0]
  def change
    remove_column :spins, :description, :text
  end
end
