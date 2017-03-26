class AddCategoryIdToSpin < ActiveRecord::Migration[5.0]
  def change
    add_column :spins, :category_id, :integer
  end
end
