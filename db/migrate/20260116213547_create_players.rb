class CreatePlayers < ActiveRecord::Migration[8.1]
  def change
    create_table :players do |t|
      t.string  :name, null: false
      t.integer :wins, default: 0, null: false
      t.integer :losses, default: 0, null: false

      t.timestamps
    end
  end
end
