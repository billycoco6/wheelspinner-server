class CreateStores < ActiveRecord::Migration[5.0]
  def change
    create_table :stores do |t|
      t.string :email
      t.string :password_digest
      t.text :name

      t.timestamps
    end
  end
end
