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

ActiveRecord::Schema[7.0].define(version: 2019_12_23_223718) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "drills", force: :cascade do |t|
    t.bigint "user_id"
    t.string "title"
    t.string "description"
    t.string "category"
    t.string "drawing"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_drills_on_user_id"
  end

  create_table "drills_tags", id: false, force: :cascade do |t|
    t.bigint "drill_id", null: false
    t.bigint "tag_id", null: false
    t.index ["drill_id", "tag_id"], name: "index_drills_tags_on_drill_id_and_tag_id"
    t.index ["tag_id", "drill_id"], name: "index_drills_tags_on_tag_id_and_drill_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "image"
    t.string "facebookid"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
