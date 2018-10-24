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

ActiveRecord::Schema.define(version: 20181020142015) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "category"
    t.string "person"
    t.string "headline"
    t.string "seo_title"
    t.string "subhead"
    t.string "meta"
    t.string "tag"
    t.bigint "contributor_id"
    t.bigint "photographer_id"
    t.string "photo"
    t.text "body"
    t.boolean "published", default: false
    t.boolean "deleted", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contributor_id"], name: "index_articles_on_contributor_id"
    t.index ["photographer_id"], name: "index_articles_on_photographer_id"
  end

  create_table "contributors", force: :cascade do |t|
    t.string "name"
    t.string "photo"
    t.text "bio"
    t.string "twitter"
    t.string "instagram"
    t.string "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.text "image_data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photographers", force: :cascade do |t|
    t.bigint "contributor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contributor_id"], name: "index_photographers_on_contributor_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "articles", "contributors"
  add_foreign_key "articles", "photographers"
  add_foreign_key "photographers", "contributors"
end
