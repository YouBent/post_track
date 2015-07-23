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

ActiveRecord::Schema.define(version: 20150723134653) do

  create_table "order_statuses", force: :cascade do |t|
    t.string   "poster",     limit: 255
    t.string   "status",     limit: 255
    t.integer  "order_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "date",       limit: 255
  end

  add_index "order_statuses", ["order_id"], name: "index_order_statuses_on_order_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.string   "oid",              limit: 255, default: "", null: false
    t.string   "sender_name",      limit: 255, default: "", null: false
    t.string   "sender_address",   limit: 255, default: "", null: false
    t.string   "sender_phone",     limit: 255, default: "", null: false
    t.string   "receiver_name",    limit: 255, default: "", null: false
    t.string   "receiver_address", limit: 255, default: "", null: false
    t.string   "receiver_phone",   limit: 255, default: "", null: false
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  add_foreign_key "order_statuses", "orders"
end
