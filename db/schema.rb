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

ActiveRecord::Schema.define(version: 2020_03_23_160801) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "author_tags", force: :cascade do |t|
    t.integer "author_id", null: false
    t.integer "tag_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_id"], name: "index_author_tags_on_author_id"
    t.index ["tag_id"], name: "index_author_tags_on_tag_id"
  end

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.string "img_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "games", force: :cascade do |t|
    t.integer "score"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_games_on_user_id"
  end

  create_table "quote_games", force: :cascade do |t|
    t.integer "game_id", null: false
    t.integer "quote_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_quote_games_on_game_id"
    t.index ["quote_id"], name: "index_quote_games_on_quote_id"
  end

  create_table "quotes", force: :cascade do |t|
    t.string "content"
    t.integer "author_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_id"], name: "index_quotes_on_author_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "author_tags", "authors"
  add_foreign_key "author_tags", "tags"
  add_foreign_key "games", "users"
  add_foreign_key "quote_games", "games"
  add_foreign_key "quote_games", "quotes"
  add_foreign_key "quotes", "authors"
end
