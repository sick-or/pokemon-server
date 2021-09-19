class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.integer :pokedex
      t.string :name
      t.string :icon
      t.integer :total

      t.timestamps
    end
  end
end
