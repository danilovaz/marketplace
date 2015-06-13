# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150613145408) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ckeditor_assets", force: true do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree

  create_table "my_admin_configurations", force: true do |t|
    t.string   "key"
    t.string   "name"
    t.string   "field_type"
    t.string   "hint"
    t.text     "value"
    t.boolean  "required"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "my_admin_group_permissions", force: true do |t|
    t.integer  "permission_id"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "my_admin_group_permissions", ["permission_id", "group_id"], name: "my_admin_group_permissions_index", unique: true, using: :btree

  create_table "my_admin_groups", force: true do |t|
    t.string   "name",        limit: 30, null: false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "my_admin_groups", ["name"], name: "index_my_admin_groups_on_name", unique: true, using: :btree

  create_table "my_admin_locales", force: true do |t|
    t.string   "name"
    t.string   "acronym"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "my_admin_locales", ["acronym"], name: "index_my_admin_locales_on_acronym", unique: true, using: :btree
  add_index "my_admin_locales", ["name"], name: "index_my_admin_locales_on_name", unique: true, using: :btree

  create_table "my_admin_logs", force: true do |t|
    t.integer  "user_id",     null: false
    t.string   "object",      null: false
    t.string   "action",      null: false
    t.string   "model",       null: false
    t.string   "application", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "my_admin_logs", ["user_id"], name: "index_my_admin_logs_on_user_id", using: :btree

  create_table "my_admin_permissions", force: true do |t|
    t.string   "model",       limit: 75, null: false
    t.string   "name",        limit: 75, null: false
    t.string   "application", limit: 75, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "my_admin_user_groups", force: true do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "my_admin_user_groups", ["user_id", "group_id"], name: "my_admin_user_groups_index", unique: true, using: :btree

  create_table "my_admin_users", force: true do |t|
    t.string   "first_name",         default: "",    null: false
    t.string   "last_name",          default: "",    null: false
    t.string   "username",           default: "",    null: false
    t.boolean  "superuser",          default: false, null: false
    t.string   "email",                              null: false
    t.boolean  "active",             default: true,  null: false
    t.string   "salt",                               null: false
    t.string   "encrypted_password",                 null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "encrypted_recover"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_templates", force: true do |t|
    t.integer  "template_id"
    t.integer  "order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "order_templates", ["order_id"], name: "index_order_templates_on_order_id", using: :btree
  add_index "order_templates", ["template_id"], name: "index_order_templates_on_template_id", using: :btree

  create_table "orders", force: true do |t|
    t.integer  "status"
    t.datetime "payment_date"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "phones", force: true do |t|
    t.integer  "user_id"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "phones", ["user_id"], name: "index_phones_on_user_id", using: :btree

  create_table "templates", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image"
    t.float    "value"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "templates", ["category_id"], name: "index_templates_on_category_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
