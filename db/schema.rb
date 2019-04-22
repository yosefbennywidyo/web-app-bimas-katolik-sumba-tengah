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

ActiveRecord::Schema.define(version: 2019_04_22_130416) do

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

  create_table "laporan_penyuluh_agama_katolik", force: :cascade do |t|
    t.string "judul"
    t.string "keterangan"
    t.string "tautan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_laporan_penyuluh_agama_katolik_on_user_id"
  end

  create_table "peran", force: :cascade do |t|
    t.string "nama_peran"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "nama_lengkap"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "peran_id"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["peran_id"], name: "index_users_on_peran_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "data_keagamaan_katolik", "users"
  add_foreign_key "laporan_penyuluh_agama_katolik", "users"
  add_foreign_key "users", "peran"
end
