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

ActiveRecord::Schema.define(version: 2022_03_31_184813) do

  create_table "applications", force: :cascade do |t|
    t.string "type"
    t.string "email"
    t.string "organisation"
    t.text "text"
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "coasters", force: :cascade do |t|
    t.integer "quanity"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_coasters_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "organizer"
    t.date "date"
    t.text "description"
    t.string "image_url"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "innovation_grants", force: :cascade do |t|
    t.string "project_name"
    t.string "organisation_name"
    t.text "project_description"
    t.integer "year_awarded"
    t.string "link_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_innovation_grants_on_user_id"
  end

  create_table "news_pieces", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "text"
    t.string "image"
    t.date "date"
    t.boolean "pinned"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_news_pieces_on_user_id"
  end

  create_table "partners", force: :cascade do |t|
    t.string "organisation_name"
    t.text "organisation_description"
    t.string "link_url"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_partners_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "coasters", "users"
  add_foreign_key "events", "users"
  add_foreign_key "innovation_grants", "users"
  add_foreign_key "news_pieces", "users"
  add_foreign_key "partners", "users"
end
