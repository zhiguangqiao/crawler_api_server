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

ActiveRecord::Schema.define(version: 2019_04_05_024600) do

  create_table "counters", force: :cascade do |t|
    t.integer "count"
    t.integer "crawler_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "crawlers", force: :cascade do |t|
    t.string "shell_command"
    t.string "name"
    t.string "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shell_command"], name: "index_crawlers_on_shell_command", unique: true
  end

end
