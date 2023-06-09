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

ActiveRecord::Schema.define(version: 2023_04_28_212455) do

  create_table "fighters", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.integer "health"
    t.bigint "vocation_id"
    t.integer "attack_power"
    t.integer "defense_power"
    t.index ["attack_power"], name: "index_fighters_on_attack_power"
    t.index ["defense_power"], name: "index_fighters_on_defense_power"
    t.index ["vocation_id"], name: "index_fighters_on_vocation_id"
  end

  create_table "fighters_powers", id: false, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "fighter_id"
    t.bigint "power_id"
    t.index ["fighter_id"], name: "index_fighters_powers_on_fighter_id"
    t.index ["power_id"], name: "index_fighters_powers_on_power_id"
  end

  create_table "powers", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.integer "damage"
    t.integer "cooldown"
  end

  create_table "vocations", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
  end

  add_foreign_key "fighters", "vocations"
end
