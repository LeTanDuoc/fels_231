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

ActiveRecord::Schema.define(version: 20170626091848) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "course"
    t.integer "level"
    t.integer "lesson_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_categories_on_lesson_id"
    t.index ["user_id"], name: "index_categories_on_user_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.string "name"
    t.integer "score"
    t.integer "level"
    t.boolean "is_correct"
    t.integer "progress"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "follower_id"
    t.integer "following_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["follower_id", nil], name: "index_relationships_on_follower_id_and_followed_id", unique: true
    t.index ["follower_id"], name: "index_relationships_on_follower_id"
    t.index [nil], name: "index_relationships_on_followed_id"
  end

  create_table "results", force: :cascade do |t|
    t.integer "Score"
    t.string "learned_word"
    t.string "int"
    t.integer "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_results_on_lesson_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.boolean "is_admin", default: false
    t.integer "number_word"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wordlists", force: :cascade do |t|
    t.string "name"
    t.string "wordlist_learned"
    t.string "wordlist_unlearned"
    t.integer "categories_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["categories_id"], name: "index_wordlists_on_categories_id"
  end

  create_table "words", force: :cascade do |t|
    t.boolean "leaned_state"
    t.integer "level"
    t.integer "answer"
    t.integer "categories_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["categories_id"], name: "index_words_on_categories_id"
  end

end
