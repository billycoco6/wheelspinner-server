class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.text :result
      t.string :email

      t.timestamps
    end
  end
end
