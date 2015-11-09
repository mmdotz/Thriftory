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

ActiveRecord::Schema.define(version: 20151109000227) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "finances", force: :cascade do |t|
    t.integer  "procure_cost",   default: 0
    t.integer  "shipping_cost",  default: 0
    t.string   "pre_sale_notes"
    t.integer  "pre_sale_cost",  default: 0
    t.integer  "buyer_pmt",      default: 0
    t.integer  "item_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "finances", ["item_id"], name: "index_finances_on_item_id", using: :btree

  create_table "homes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "description", limit: 150
    t.integer  "quantity",                default: 1
    t.string   "shipping"
    t.string   "storage_loc"
    t.string   "status",                  default: "ready for sale"
    t.string   "condition",               default: "good"
    t.integer  "source_id"
    t.integer  "subcat2_id"
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.integer  "category_id"
    t.integer  "subcat1_id"
  end

  add_index "items", ["source_id"], name: "index_items_on_source_id", using: :btree
  add_index "items", ["subcat2_id"], name: "index_items_on_subcat2_id", using: :btree

  create_table "photos", force: :cascade do |t|
    t.integer  "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image_id"
  end

  add_index "photos", ["item_id"], name: "index_photos_on_item_id", using: :btree

  create_table "sources", force: :cascade do |t|
    t.string   "name",       default: "unknown"
    t.datetime "date",       default: '2015-10-26 00:00:00'
    t.string   "address",    default: "unknown"
    t.string   "type_of",                                    null: false
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.integer  "user_id"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "subcat1s", force: :cascade do |t|
    t.string   "name",        null: false
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "subcat1s", ["category_id"], name: "index_subcat1s_on_category_id", using: :btree

  create_table "subcat2s", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "subcat1_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "subcat2s", ["subcat1_id"], name: "index_subcat2s_on_subcat1_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.boolean  "admin",           default: false
    t.string   "password_digest"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.float    "latitude"
    t.float    "longitude"
    t.string   "address"
  end

  add_foreign_key "finances", "items"
  add_foreign_key "items", "sources"
  add_foreign_key "items", "subcat2s"
  add_foreign_key "photos", "items"
  add_foreign_key "sources", "users"
  add_foreign_key "subcat1s", "categories"
  add_foreign_key "subcat2s", "subcat1s"
end
