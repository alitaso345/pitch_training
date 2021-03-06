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

ActiveRecord::Schema.define(version: 2022_01_22_094356) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lesson_targets", force: :cascade do |t|
    t.bigint "lesson_id", null: false
    t.bigint "note_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["lesson_id", "note_id"], name: "index_lesson_targets_on_lesson_id_and_note_id", unique: true
    t.index ["lesson_id"], name: "index_lesson_targets_on_lesson_id"
    t.index ["note_id"], name: "index_lesson_targets_on_note_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.string "title", null: false
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "notes", force: :cascade do |t|
    t.string "name", null: false
    t.string "file_name", null: false
    t.integer "keyboard_number", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["keyboard_number"], name: "index_notes_on_keyboard_number", unique: true
  end

  add_foreign_key "lesson_targets", "lessons"
  add_foreign_key "lesson_targets", "notes"
end
