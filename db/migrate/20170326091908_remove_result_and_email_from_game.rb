class RemoveResultAndEmailFromGame < ActiveRecord::Migration[5.0]
  def change
    remove_column :games, :result, :text
    remove_column :games, :email, :string
  end
end
