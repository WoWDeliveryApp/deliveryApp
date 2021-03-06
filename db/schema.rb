# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20170204044239) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "restaurant_type"
    t.string   "description"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "companies", ["user_id"], name: "index_companies_on_user_id", using: :btree

  create_table "deliveries", force: :cascade do |t|
    t.boolean  "accepted"
    t.boolean  "delivered"
    t.boolean  "refused"
    t.string   "description"
    t.integer  "order_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "deliveries", ["order_id"], name: "index_deliveries_on_order_id", using: :btree

  create_table "menus", force: :cascade do |t|
    t.string   "name"
    t.float    "price"
    t.string   "description"
    t.datetime "time"
    t.integer  "order_id"
    t.integer  "company_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "type_menu"
  end

  add_index "menus", ["company_id"], name: "index_menus_on_company_id", using: :btree
  add_index "menus", ["order_id"], name: "index_menus_on_order_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.integer  "invoice"
    t.integer  "user_id"
    t.integer  "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "orders", ["company_id"], name: "index_orders_on_company_id", using: :btree
  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "api_token"
    t.string   "address"
    t.integer  "role",                   default: 0
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "companies", "users"
  add_foreign_key "deliveries", "orders"
  add_foreign_key "menus", "companies"
  add_foreign_key "menus", "orders"
  add_foreign_key "orders", "companies"
  add_foreign_key "orders", "users"
end
