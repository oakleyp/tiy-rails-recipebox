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

ActiveRecord::Schema.define(version: 20170804002219) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "images", force: :cascade do |t|
    t.string "caption"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.string "plural_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.text "description"
    t.text "steps"
    t.bigint "ingredients_id"
    t.bigint "images_id"
    t.string "preptime"
    t.string "cooktime"
    t.integer "servings"
    t.integer "calories"
    t.string "source"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "img_attachment_file_name"
    t.string "img_attachment_content_type"
    t.integer "img_attachment_file_size"
    t.datetime "img_attachment_updated_at"
    t.index ["images_id"], name: "index_recipes_on_images_id"
    t.index ["ingredients_id"], name: "index_recipes_on_ingredients_id"
  end

end
