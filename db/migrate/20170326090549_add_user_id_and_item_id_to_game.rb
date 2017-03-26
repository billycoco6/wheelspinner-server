class AddUserIdAndItemIdToGame < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :user_id, :integer
    add_column :games, :item_id, :integer
  end
end
