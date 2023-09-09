# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_09_09_151639) do
  create_table "battles", force: :cascade do |t|
    t.integer "winner"
    t.integer "loser"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.float "hp"
    t.float "attack"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "character_id"
    t.float "exp", default: 0.0
  end

  create_table "shields", force: :cascade do |t|
    t.string "name"
    t.float "damage_reduction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "character_id"
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.float "damage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "character_id"
  end

  add_foreign_key "shields", "characters"
  add_foreign_key "weapons", "characters"
end
