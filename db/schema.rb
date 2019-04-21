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

ActiveRecord::Schema.define(version: 2019_04_21_124308) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "data_keagamaan_katolik", force: :cascade do |t|
    t.string "judul"
    t.string "keterangan"
    t.string "tautan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_data_keagamaan_katolik_on_user_id"
  end

  create_table "peran", force: :cascade do |t|
    t.string "nama_peran"
    t.string "keterangan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "nama_lengkap"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "peran_id"
    t.index ["peran_id"], name: "index_users_on_peran_id"
  end

  add_foreign_key "data_keagamaan_katolik", "users"
  add_foreign_key "users", "peran"
end
