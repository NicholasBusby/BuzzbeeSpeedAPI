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

ActiveRecord::Schema.define(version: 20140822154407) do

  create_table "products", force: true do |t|
    t.string   "name",                                 null: false
    t.integer  "companyId",                            null: false
    t.decimal  "price",       precision: 10, scale: 0, null: false
    t.decimal  "cost",        precision: 10, scale: 0, null: false
    t.decimal  "msrp",        precision: 10, scale: 0, null: false
    t.string   "binLocation",                          null: false
    t.string   "status",                               null: false
    t.text     "details",                              null: false
    t.string   "tags",                                 null: false
    t.integer  "quantity",                             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["id"], name: "index_products_on_id", using: :btree
  add_index "products", ["name"], name: "index_products_on_name", using: :btree

end
