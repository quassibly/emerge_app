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

ActiveRecord::Schema.define(version: 20210923200553) do

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
    t.datetime "published_at"
    t.string "feature"
    t.string "slug"
    t.string "url"
    t.integer "priority", default: 3
    t.integer "age"
    t.index ["contributor_id"], name: "index_articles_on_contributor_id"
    t.index ["photographer_id"], name: "index_articles_on_photographer_id"
    t.index ["slug"], name: "index_articles_on_slug", unique: true
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
    t.string "linked_in"
  end

  create_table "friendly_id_slugs", id: :serial, force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "images", force: :cascade do |t|
    t.text "image_data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pg_search_documents", force: :cascade do |t|
    t.text "content"
    t.string "searchable_type"
    t.bigint "searchable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable_type_and_searchable_id"
  end

  create_table "photographers", force: :cascade do |t|
    t.string "name"
    t.string "photo"
    t.text "bio"
    t.string "twitter"
    t.string "instagram"
    t.string "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.text "image_data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pins", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "tag"
    t.string "classification"
    t.string "event_type"
    t.string "location"
    t.string "phone"
    t.string "photo"
    t.datetime "date"
    t.datetime "end_date"
    t.string "address"
    t.string "url"
    t.text "description"
    t.boolean "published", default: false
    t.boolean "deleted", default: false
    t.datetime "published_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
    t.string "slug"
    t.string "region"
    t.index ["slug"], name: "index_pins_on_slug", unique: true
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
end
