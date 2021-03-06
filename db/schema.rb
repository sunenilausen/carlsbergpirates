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

ActiveRecord::Schema.define(version: 20200715174024) do

  create_table "article_lecture_insertions", force: :cascade do |t|
    t.integer "number"
    t.integer "article_id"
    t.integer "lecture_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_article_lecture_insertions_on_article_id"
    t.index ["lecture_id"], name: "index_article_lecture_insertions_on_lecture_id"
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.string "key"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.text "preview"
    t.string "preview_image_url"
    t.integer "category_id"
    t.text "preview_code"
    t.boolean "documentation", default: true
    t.boolean "active", default: false
    t.index ["category_id"], name: "index_articles_on_category_id"
    t.index ["deleted_at"], name: "index_articles_on_deleted_at"
  end

  create_table "categories", force: :cascade do |t|
    t.string "title"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lectures", force: :cascade do |t|
    t.integer "number"
    t.string "title"
    t.text "body"
    t.integer "workshop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.text "preview"
    t.string "preview_image_url"
    t.boolean "active", default: false
    t.boolean "prologue", default: false
    t.index ["deleted_at"], name: "index_lectures_on_deleted_at"
    t.index ["workshop_id"], name: "index_lectures_on_workshop_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.date "completed_at"
    t.string "owner_names"
    t.string "image_url"
    t.string "project_source"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "active", default: false
    t.text "description"
  end

  create_table "projects_showcases", id: false, force: :cascade do |t|
    t.integer "project_id", null: false
    t.integer "showcase_id", null: false
    t.index ["project_id"], name: "index_projects_showcases_on_project_id"
    t.index ["showcase_id"], name: "index_projects_showcases_on_showcase_id"
  end

  create_table "showcases", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.date "released_at"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "active", default: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "parent", default: false
    t.boolean "volunteer", default: false
    t.boolean "student", default: false
    t.boolean "admin", default: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_users_on_deleted_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "workshops", force: :cascade do |t|
    t.string "title"
    t.string "key"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.string "image_url"
    t.boolean "active", default: false
    t.index ["deleted_at"], name: "index_workshops_on_deleted_at"
  end

end
