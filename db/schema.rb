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

ActiveRecord::Schema[7.0].define(version: 2024_08_18_054218) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hosts", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "program_id"
  end

  create_table "programs", force: :cascade do |t|
    t.string "name", null: false
    t.string "channel", null: false
    t.datetime "date_and_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "broadcast_day"
    t.time "start_time"
    t.time "end_time"
    t.bigint "user_id", null: false
    t.string "host_name"
    t.index ["user_id"], name: "index_programs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "crypted_password"
    t.string "salt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_users_on_name", unique: true
  end

  add_foreign_key "hosts", "programs"
  add_foreign_key "programs", "users"
end
