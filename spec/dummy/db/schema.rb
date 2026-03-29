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

ActiveRecord::Schema[7.0].define(version: 2025_02_26_000001) do
  create_table "research_outputs", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "category", limit: 1, default: 0, null: false
    t.string "title", null: false
    t.string "authors"
    t.date "published_on", null: false
    t.integer "review_status", limit: 1, default: 0, null: false
    t.text "description"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_research_outputs_on_user_id"
  end

  create_table "sns_links", force: :cascade do |t|
    t.integer "link_type", null: false
    t.string "url", null: false
    t.string "sns_linkable_type", null: false
    t.bigint "sns_linkable_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["sns_linkable_type", "sns_linkable_id"], name: "index_sns_links_on_sns_linkable_type_and_sns_linkable_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "handle"
  end

  create_table "vision_affiliations", force: :cascade do |t|
    t.bigint "profile_id"
    t.string "organization_name"
    t.string "organization_name_en"
    t.string "department_name"
    t.string "department_name_en"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id", "order"], name: "index_vision_affiliations_on_profile_id_and_order"
  end

  create_table "vision_profiles", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name"
    t.string "name_en"
    t.text "vision"
    t.text "vision_en"
    t.string "image"
    t.boolean "published", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_vision_profiles_on_user_id", unique: true
  end

  create_table "vision_research_fields", force: :cascade do |t|
    t.bigint "profile_id"
    t.string "name"
    t.string "name_en"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id", "order"], name: "index_vision_research_fields_on_profile_id_and_order"
  end

  create_table "vision_research_keywords", force: :cascade do |t|
    t.bigint "profile_id"
    t.string "name"
    t.string "name_en"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id", "order"], name: "index_vision_research_keywords_on_profile_id_and_order"
  end

  create_table "vision_research_publication_links", force: :cascade do |t|
    t.bigint "profile_id"
    t.string "url"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id", "order"], name: "vision_research_publication_links_index"
  end

  add_foreign_key "research_outputs", "users"
end
