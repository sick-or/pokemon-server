class CreateStats < ActiveRecord::Migration[6.0]
  def change
    create_table :stats do |t|
      t.string :name
      t.integer :hp
      t.integer :attack
      t.integer :defence
      t.integer :sp_atk
      t.integer :sp_def
      t.integer :speed
      t.references :pokemon, null: false, foreign_key: true

      t.timestamps
    end
  end
end
