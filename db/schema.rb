# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_09_19_204609) do

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.text "tags"
    t.datetime "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "attributes", force: :cascade do |t|
    t.string "name"
    t.integer "hp"
    t.integer "attack"
    t.integer "defence"
    t.integer "sp_atk"
    t.integer "sp_def"
    t.integer "speed"
    t.integer "pokemon_id", null: false
    t.datetime "created_at", precision: 6
    t.datetime "updated_at", precision: 6
    t.index ["pokemon_id"], name: "index_attributes_on_pokemon_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "commenter"
    t.text "body"
    t.integer "article_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["article_id"], name: "index_comments_on_article_id"
  end

  create_table "poke_types", force: :cascade do |t|
    t.string "name"
    t.string "poke_type"
    t.integer "pokemon_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pokemon_id"], name: "index_poke_types_on_pokemon_id"
  end

  create_table "pokemons", force: :cascade do |t|
    t.integer "pokedex"
    t.string "name"
    t.string "icon"
    t.integer "total"
    t.datetime "created_at", precision: 6
    t.datetime "updated_at", precision: 6
  end

  create_table "stats", force: :cascade do |t|
    t.string "name"
    t.integer "hp"
    t.integer "attack"
    t.integer "defence"
    t.integer "sp_atk"
    t.integer "sp_def"
    t.integer "speed"
    t.integer "pokemon_id", null: false
    t.datetime "created_at", precision: 6
    t.datetime "updated_at", precision: 6
    t.index ["pokemon_id"], name: "index_stats_on_pokemon_id"
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.integer "pokemon_id", null: false
    t.datetime "created_at", precision: 6
    t.datetime "updated_at", precision: 6
    t.index ["pokemon_id"], name: "index_types_on_pokemon_id"
  end

  add_foreign_key "attributes", "pokemons", primary_key: "id"
  add_foreign_key "comments", "articles"
  add_foreign_key "poke_types", "pokemons"
  add_foreign_key "stats", "pokemons", primary_key: "id"
  add_foreign_key "types", "pokemons", primary_key: "id"
end
