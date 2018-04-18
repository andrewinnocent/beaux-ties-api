# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180417220404) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bows", force: :cascade do |t|
    t.string "name"
    t.string "style"
    t.string "color"
    t.string "fabric"
    t.string "description"
    t.money "price", scale: 2
    t.integer "stock_quantity"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bows_carts", force: :cascade do |t|
    t.bigint "cart_id"
    t.bigint "bow_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bow_id"], name: "index_bows_carts_on_bow_id"
    t.index ["cart_id"], name: "index_bows_carts_on_cart_id"
  end

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "examples", force: :cascade do |t|
    t.text "text", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "token", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["token"], name: "index_users_on_token", unique: true
  end

  add_foreign_key "bows_carts", "bows"
  add_foreign_key "bows_carts", "carts"
  add_foreign_key "carts", "users"
  add_foreign_key "examples", "users"
end
