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

ActiveRecord::Schema[7.0].define(version: 2022_06_24_201314) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "images", force: :cascade do |t|
    t.string "name"
    t.string "asignation"
    t.boolean "main"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "neighborhoods", force: :cascade do |t|
    t.string "name"
    t.string "desc_spa"
    t.string "desc_eng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "properties", force: :cascade do |t|
    t.decimal "surface_m", precision: 10, scale: 2
    t.decimal "front_m", precision: 10, scale: 2
    t.decimal "back_m", precision: 10, scale: 2
    t.decimal "build_m", precision: 10, scale: 2
    t.integer "visits"
    t.string "name_spa"
    t.string "name_eng"
    t.string "desc_spa"
    t.string "desc_eng"
    t.string "notes"
    t.boolean "sell"
    t.boolean "rent"
    t.decimal "price_sell", precision: 10, scale: 2
    t.decimal "price_rent", precision: 10, scale: 2
    t.string "terms_and_c"
    t.integer "habs_num"
    t.integer "wc_num"
    t.integer "park_num"
    t.string "url_video"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
