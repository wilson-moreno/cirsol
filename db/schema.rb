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

ActiveRecord::Schema.define(version: 20170714074405) do

  create_table "cirs_call_statuses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "description"
    t.boolean  "enabled"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "cirs_calls", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date     "call_date"
    t.string   "call_day"
    t.string   "call_time"
    t.string   "scriptures"
    t.string   "literature"
    t.string   "publishers"
    t.text     "notes",          limit: 65535
    t.integer  "contact_id"
    t.integer  "call_status_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["call_status_id"], name: "fk_rails_a30ecb3775", using: :btree
    t.index ["contact_id"], name: "fk_rails_b16aa348ac", using: :btree
  end

  create_table "cirs_circuits", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "short_name"
    t.integer  "circuit_overseer_id"
    t.integer  "language_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["circuit_overseer_id"], name: "fk_rails_82eac26bfa", using: :btree
    t.index ["language_id"], name: "fk_rails_8c97beafc5", using: :btree
  end

  create_table "cirs_cities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "short_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cirs_congregations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "latitude"
    t.integer  "circuit_id"
    t.integer  "city_id"
    t.integer  "language_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["circuit_id"], name: "fk_rails_db856a864b", using: :btree
    t.index ["city_id"], name: "fk_rails_43dc336196", using: :btree
    t.index ["language_id"], name: "fk_rails_527fd5a91e", using: :btree
  end

  create_table "cirs_contact_statuses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.text     "description", limit: 65535
    t.boolean  "enabled"
    t.boolean  "modifiable"
    t.boolean  "pritable"
    t.binary   "icon",        limit: 65535
    t.boolean  "countable"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "cirs_contacts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "record_number"
    t.date     "record_date"
    t.date     "birthdate"
    t.string   "last_name"
    t.string   "first_name"
    t.string   "nick_name"
    t.string   "gender"
    t.string   "marital_status"
    t.string   "nationality"
    t.binary   "profile_picture",     limit: 65535
    t.string   "house_number"
    t.string   "street_name"
    t.string   "subdivision"
    t.string   "barangay"
    t.string   "district"
    t.text     "personal_background", limit: 65535
    t.text     "family_background",   limit: 65535
    t.text     "work_background",     limit: 65535
    t.string   "phone_number"
    t.string   "mobile_number"
    t.string   "email_address"
    t.string   "skype_account"
    t.string   "facebook_account"
    t.string   "fathers_name"
    t.string   "mothers_name"
    t.string   "guardians_name"
    t.string   "postal_code"
    t.string   "zone"
    t.integer  "congregation_id"
    t.integer  "territory_id"
    t.integer  "service_group_id"
    t.integer  "municipal_id"
    t.integer  "province_id"
    t.integer  "religion_id"
    t.integer  "city_id"
    t.integer  "found_by"
    t.integer  "language_id"
    t.integer  "contact_status_id"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.index ["city_id"], name: "fk_rails_89836cb3a9", using: :btree
    t.index ["congregation_id"], name: "fk_rails_8a806d9158", using: :btree
    t.index ["contact_status_id"], name: "fk_rails_17ebdfb522", using: :btree
    t.index ["found_by"], name: "fk_rails_3fe96c37ed", using: :btree
    t.index ["language_id"], name: "fk_rails_047d7a4cf2", using: :btree
    t.index ["municipal_id"], name: "fk_rails_78a2e3b973", using: :btree
    t.index ["province_id"], name: "fk_rails_15fb91fe60", using: :btree
    t.index ["religion_id"], name: "fk_rails_3e850551eb", using: :btree
    t.index ["service_group_id"], name: "fk_rails_1ad3ec98d9", using: :btree
    t.index ["territory_id"], name: "fk_rails_26858e81af", using: :btree
  end

  create_table "cirs_languages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.text     "description", limit: 65535
    t.string   "short_name"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "cirs_location_maps", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.binary   "image",        limit: 65535
    t.string   "latitude"
    t.string   "longitude"
    t.integer  "width"
    t.integer  "height"
    t.integer  "scale"
    t.integer  "zoom"
    t.string   "image_format"
    t.string   "map_type"
    t.string   "marker_color"
    t.integer  "accuracy"
    t.string   "marker_label"
    t.integer  "contact_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["contact_id"], name: "fk_rails_c2b09694ef", using: :btree
  end

  create_table "cirs_municipals", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "short_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cirs_provinces", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "short_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cirs_publishers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "mobile_number"
    t.string   "email_address"
    t.integer  "congregation_id"
    t.integer  "service_privilege_id"
    t.integer  "user_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["congregation_id"], name: "fk_rails_8852667b68", using: :btree
    t.index ["service_privilege_id"], name: "fk_rails_4bf7810749", using: :btree
  end

  create_table "cirs_religions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "short_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cirs_service_groups", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "group_name"
    t.integer  "congregation_id"
    t.integer  "group_overseer_id"
    t.integer  "group_assistant_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["congregation_id"], name: "fk_rails_ab955dc900", using: :btree
    t.index ["group_assistant_id"], name: "fk_rails_3d364c5899", using: :btree
    t.index ["group_overseer_id"], name: "fk_rails_78c8c1d524", using: :btree
  end

  create_table "cirs_service_privileges", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.text     "description", limit: 65535
    t.string   "short_name"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "cirs_territories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "description"
    t.boolean  "enabled"
    t.binary   "map_image",        limit: 65535
    t.string   "direction"
    t.string   "marker_color"
    t.integer  "congregation_id"
    t.integer  "service_group_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["congregation_id"], name: "fk_rails_ce8d38d799", using: :btree
    t.index ["service_group_id"], name: "fk_rails_e766b01756", using: :btree
  end

  add_foreign_key "cirs_calls", "cirs_call_statuses", column: "call_status_id"
  add_foreign_key "cirs_calls", "cirs_contacts", column: "contact_id"
  add_foreign_key "cirs_circuits", "cirs_languages", column: "language_id"
  add_foreign_key "cirs_circuits", "cirs_publishers", column: "circuit_overseer_id"
  add_foreign_key "cirs_congregations", "cirs_circuits", column: "circuit_id"
  add_foreign_key "cirs_congregations", "cirs_cities", column: "city_id"
  add_foreign_key "cirs_congregations", "cirs_languages", column: "language_id"
  add_foreign_key "cirs_contacts", "cirs_cities", column: "city_id"
  add_foreign_key "cirs_contacts", "cirs_congregations", column: "congregation_id"
  add_foreign_key "cirs_contacts", "cirs_contact_statuses", column: "contact_status_id"
  add_foreign_key "cirs_contacts", "cirs_languages", column: "language_id"
  add_foreign_key "cirs_contacts", "cirs_municipals", column: "municipal_id"
  add_foreign_key "cirs_contacts", "cirs_provinces", column: "province_id"
  add_foreign_key "cirs_contacts", "cirs_publishers", column: "found_by"
  add_foreign_key "cirs_contacts", "cirs_religions", column: "religion_id"
  add_foreign_key "cirs_contacts", "cirs_service_groups", column: "service_group_id"
  add_foreign_key "cirs_contacts", "cirs_territories", column: "territory_id"
  add_foreign_key "cirs_location_maps", "cirs_contacts", column: "contact_id"
  add_foreign_key "cirs_publishers", "cirs_congregations", column: "congregation_id"
  add_foreign_key "cirs_publishers", "cirs_service_privileges", column: "service_privilege_id"
  add_foreign_key "cirs_service_groups", "cirs_congregations", column: "congregation_id"
  add_foreign_key "cirs_service_groups", "cirs_publishers", column: "group_assistant_id"
  add_foreign_key "cirs_service_groups", "cirs_publishers", column: "group_overseer_id"
  add_foreign_key "cirs_territories", "cirs_congregations", column: "congregation_id"
  add_foreign_key "cirs_territories", "cirs_service_groups", column: "service_group_id"
end
