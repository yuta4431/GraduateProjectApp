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

ActiveRecord::Schema[7.0].define(version: 2024_09_17_131227) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hosts", force: :cascade do |t|
    t.string "host_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["host_name"], name: "index_hosts_on_host_name", unique: true
  end

  create_table "posts", force: :cascade do |t|
    t.string "title", null: false
    t.date "broadcast_date", null: false
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.integer "program_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "programs", force: :cascade do |t|
    t.string "title", null: false
    t.string "host_name"
    t.string "channel"
    t.string "day_of_week", null: false
    t.time "start_time"
    t.time "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "host_id"
    t.index ["title", "channel"], name: "index_programs_on_title_and_channel", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "crypted_password"
    t.string "salt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_users_on_name", unique: true
  end

  add_foreign_key "posts", "programs"
  add_foreign_key "posts", "users"
  add_foreign_key "programs", "hosts"
end
