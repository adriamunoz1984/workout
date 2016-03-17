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

ActiveRecord::Schema.define(version: 20160317013200) do

  create_table "exercises", force: :cascade do |t|
    t.string   "name"
    t.integer  "weight"
    t.integer  "sets"
    t.integer  "reps"
    t.integer  "training_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "exercises", ["training_id"], name: "index_exercises_on_training_id"

  create_table "meals", force: :cascade do |t|
    t.string   "feast"
    t.string   "name"
    t.integer  "protein"
    t.integer  "carbohydrates"
    t.integer  "fat"
    t.integer  "calories"
    t.string   "notes"
    t.datetime "date"
    t.integer  "nutrition_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "meals", ["nutrition_id"], name: "index_meals_on_nutrition_id"

  create_table "nutritions", force: :cascade do |t|
    t.string   "name"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trainings", force: :cascade do |t|
    t.datetime "date"
    t.string   "type"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
