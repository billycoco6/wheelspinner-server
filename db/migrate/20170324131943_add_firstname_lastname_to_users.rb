class AddFirstnameLastnameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :firstname, :text
    add_column :users, :lastname, :text
  end
end
