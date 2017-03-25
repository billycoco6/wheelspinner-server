class RemovePasswordDisgestFromStore < ActiveRecord::Migration[5.0]
  def change
    remove_column :stores, :password_digest, :string
  end
end
