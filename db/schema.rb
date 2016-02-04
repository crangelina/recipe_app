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

ActiveRecord::Schema.define(version: 20160203194936) do

  create_table "directions", force: :cascade do |t|
    t.text     "step"
    t.integer  "meal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "directions", ["meal_id"], name: "index_directions_on_meal_id"

  create_table "entries", force: :cascade do |t|
    t.string   "day"
    t.string   "tag"
    t.integer  "meal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "note"
  end

  add_index "entries", ["meal_id"], name: "index_entries_on_meal_id"

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.string   "amount"
    t.integer  "meal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ingredients", ["meal_id"], name: "index_ingredients_on_meal_id"

  create_table "meals", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "tag"
    t.integer  "servings"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "avatar"
  end

  create_table "nutritions", force: :cascade do |t|
    t.integer  "calories"
    t.integer  "protein"
    t.integer  "carbs"
    t.integer  "fat"
    t.integer  "subject_id"
    t.string   "subject_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "nutritions", ["subject_type", "subject_id"], name: "index_nutritions_on_subject_type_and_subject_id"

end
