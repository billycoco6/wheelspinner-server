class CreateSpins < ActiveRecord::Migration[5.0]
  def change
    create_table :spins do |t|
      t.text :name
      t.text :description

      t.timestamps
    end
  end
end
