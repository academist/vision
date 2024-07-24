# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2024_07_24_103703) do
  create_table "sns_links", force: :cascade do |t|
    t.integer "link_type", null: false
    t.string "url", null: false
    t.string "sns_linkable_type", null: false
    t.bigint "sns_linkable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sns_linkable_type", "sns_linkable_id"], name: "index_sns_links_on_sns_linkable_type_and_sns_linkable_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "handle"
  end

  create_table "vision_affiliations", force: :cascade do |t|
    t.bigint "profile_id"
    t.string "organization_name"
    t.string "organization_name_en"
    t.string "department_name"
    t.string "department_name_en"
    t.integer "order"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_vision_profiles_on_user_id", unique: true
  end

  create_table "vision_research_fields", force: :cascade do |t|
    t.bigint "profile_id"
    t.string "name"
    t.string "name_en"
    t.integer "order"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["profile_id", "order"], name: "index_vision_research_fields_on_profile_id_and_order"
  end

  create_table "vision_research_keywords", force: :cascade do |t|
    t.bigint "profile_id"
    t.string "name"
    t.string "name_en"
    t.integer "order"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["profile_id", "order"], name: "index_vision_research_keywords_on_profile_id_and_order"
  end

  create_table "vision_research_publication_links", force: :cascade do |t|
    t.bigint "profile_id"
    t.string "url"
    t.integer "order"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["profile_id", "order"], name: "vision_research_publication_links_index"
  end

end
