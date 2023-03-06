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

ActiveRecord::Schema[7.0].define(version: 2023_03_06_064642) do
  create_table "author_add_column_tos", force: :cascade do |t|
    t.integer "price"
    t.string "booktype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "authors", force: :cascade do |t|
    t.string "firstname"
    t.string "bookname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "remove_column_from_students", force: :cascade do |t|
    t.integer "phonenumber"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_add_column_tos", force: :cascade do |t|
    t.string "email"
    t.integer "phonenumber"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "password"
    t.datetime "dob"
    t.string "zipcode"
    t.string "phone_number"
    t.string "email"
    t.date "term_start_date"
    t.date "term_end_date"
    t.index ["first_name"], name: "index_students_on_first_name"
  end

end
