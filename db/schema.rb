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

ActiveRecord::Schema.define(version: 20180203223224) do

  create_table "directions", force: :cascade do |t|
    t.string "name_d"
    t.string "pmo"
    t.string "office"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.datetime "deadline"
    t.string "pmo"
    t.string "manager"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teamprojects", force: :cascade do |t|
    t.integer "team_id"
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_teamprojects_on_project_id"
    t.index ["team_id"], name: "index_teamprojects_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "teamname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_directions", force: :cascade do |t|
    t.integer "users_id"
    t.integer "teams_id"
    t.integer "full_name_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["full_name_id"], name: "index_user_directions_on_full_name_id"
    t.index ["teams_id"], name: "index_user_directions_on_teams_id"
    t.index ["users_id"], name: "index_user_directions_on_users_id"
  end

  create_table "user_teams", force: :cascade do |t|
    t.integer "user_id"
    t.integer "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_user_teams_on_team_id"
    t.index ["user_id"], name: "index_user_teams_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "password_confirmation"
    t.boolean "admin"
    t.boolean "ativo"
    t.string "avatar"
  end

end
