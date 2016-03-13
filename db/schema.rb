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

ActiveRecord::Schema.define(version: 20160312001933) do

  create_table "directions", force: :cascade do |t|
    t.text     "step"
    t.integer  "meal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "directions", ["meal_id"], name: "index_directions_on_meal_id"

  create_table "entries", force: :cascade do |t|
    t.string   "day"
    t.string   "meal_type"
    t.integer  "meal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "note"
    t.integer  "user_id"
  end

  add_index "entries", ["meal_id"], name: "index_entries_on_meal_id"
  add_index "entries", ["user_id"], name: "index_entries_on_user_id"

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.string   "amount"
    t.integer  "meal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ingredients", ["meal_id"], name: "index_ingredients_on_meal_id"

  create_table "meal_tags", force: :cascade do |t|
    t.integer  "meal_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "meal_tags", ["meal_id"], name: "index_meal_tags_on_meal_id"
  add_index "meal_tags", ["tag_id"], name: "index_meal_tags_on_tag_id"

  create_table "meals", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "servings"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "avatar"
    t.integer  "user_id"
  end

  add_index "meals", ["user_id"], name: "index_meals_on_user_id"

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

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.string   "color"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tags", ["user_id"], name: "index_tags_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
