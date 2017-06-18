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

ActiveRecord::Schema.define(version: 20170618013559) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "username",               default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_admin_users_on_username", unique: true
  end

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.boolean  "is_active",  default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "contact_types", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dashboards", force: :cascade do |t|
    t.integer  "client_id"
    t.string   "name",       default: "",    null: false
    t.boolean  "published",  default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["client_id"], name: "index_dashboards_on_client_id"
  end

  create_table "desks", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pages", force: :cascade do |t|
    t.string   "name",       default: "",    null: false
    t.integer  "position",                   null: false
    t.boolean  "published",  default: false
    t.string   "ancestry"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["ancestry"], name: "index_pages_on_ancestry"
  end

  create_table "projects", force: :cascade do |t|
    t.integer  "region_id"
    t.integer  "client_id"
    t.string   "name"
    t.boolean  "is_active",  default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["client_id"], name: "index_projects_on_client_id"
    t.index ["region_id"], name: "index_projects_on_region_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.string   "label"
    t.boolean  "is_active",  default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "regions_ticket_raws", id: false, force: :cascade do |t|
    t.integer "region_id",     null: false
    t.integer "ticket_raw_id", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.integer  "dashboard_id"
    t.string   "name"
    t.string   "ancestry"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["ancestry"], name: "index_sections_on_ancestry"
    t.index ["dashboard_id"], name: "index_sections_on_dashboard_id"
  end

  create_table "ticket_raws", force: :cascade do |t|
    t.datetime "opened_at"
    t.datetime "resolved_at"
    t.integer  "ticket_service_id"
    t.integer  "ticket_symptom_id"
    t.integer  "ticket_type_id"
    t.integer  "contact_type_id"
    t.integer  "desk_id"
    t.integer  "client_id"
    t.integer  "region_id"
    t.string   "group_name"
    t.string   "location"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["client_id"], name: "index_ticket_raws_on_client_id"
    t.index ["contact_type_id"], name: "index_ticket_raws_on_contact_type_id"
    t.index ["desk_id"], name: "index_ticket_raws_on_desk_id"
    t.index ["region_id"], name: "index_ticket_raws_on_region_id"
    t.index ["ticket_service_id"], name: "index_ticket_raws_on_ticket_service_id"
    t.index ["ticket_symptom_id"], name: "index_ticket_raws_on_ticket_symptom_id"
    t.index ["ticket_type_id"], name: "index_ticket_raws_on_ticket_type_id"
  end

  create_table "ticket_services", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ticket_symptoms", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ticket_types", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
