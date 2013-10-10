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

ActiveRecord::Schema.define(version: 20131010001119) do

  create_table "admins", force: true do |t|
    t.string   "email",              default: "", null: false
    t.string   "encrypted_password", default: "", null: false
    t.integer  "sign_in_count",      default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",    default: 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "apartments", force: true do |t|
    t.string   "streetAddress"
    t.string   "aptNumber"
    t.integer  "rent"
    t.boolean  "isAvailable"
    t.string   "description"
    t.integer  "sqFootage"
    t.string   "beds"
    t.string   "baths"
    t.integer  "parking"
    t.boolean  "stove"
    t.boolean  "washer"
    t.boolean  "dryer"
    t.boolean  "refrigerator"
    t.boolean  "microwave"
    t.boolean  "dishwasher"
    t.boolean  "laundryOnSite"
    t.boolean  "hardwoodFloors"
    t.boolean  "pets"
    t.boolean  "gasHeater"
    t.boolean  "balcony"
    t.boolean  "airConditioning"
    t.boolean  "fireplace"
    t.boolean  "patio"
    t.boolean  "util_gas"
    t.boolean  "util_water"
    t.boolean  "util_electric"
    t.boolean  "util_maid"
    t.boolean  "util_trash"
    t.boolean  "util_gardener"
    t.boolean  "util_cable"
    t.boolean  "util_internet"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "image_remote_url"
    t.string   "image2_file_name"
    t.string   "image2_content_type"
    t.integer  "image2_file_size"
    t.datetime "image2_updated_at"
    t.string   "image3_file_name"
    t.string   "image3_content_type"
    t.integer  "image3_file_size"
    t.datetime "image3_updated_at"
    t.string   "image4_file_name"
    t.string   "image4_content_type"
    t.integer  "image4_file_size"
    t.datetime "image4_updated_at"
    t.string   "image5_file_name"
    t.string   "image5_content_type"
    t.integer  "image5_file_size"
    t.datetime "image5_updated_at"
    t.string   "image6_file_name"
    t.string   "image6_content_type"
    t.integer  "image6_file_size"
    t.datetime "image6_updated_at"
    t.string   "image7_file_name"
    t.string   "image7_content_type"
    t.integer  "image7_file_size"
    t.datetime "image7_updated_at"
    t.string   "image8_file_name"
    t.string   "image8_content_type"
    t.integer  "image8_file_size"
    t.datetime "image8_updated_at"
    t.string   "image9_file_name"
    t.string   "image9_content_type"
    t.integer  "image9_file_size"
    t.datetime "image9_updated_at"
    t.string   "image10_file_name"
    t.string   "image10_content_type"
    t.integer  "image10_file_size"
    t.datetime "image10_updated_at"
  end

  add_index "apartments", ["user_id"], name: "index_apartments_on_user_id"

  create_table "applies", force: true do |t|
    t.string   "aptaddress"
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "dob"
    t.string   "ssn"
    t.string   "license"
    t.string   "licensestate"
    t.string   "current_address"
    t.string   "current_unit"
    t.string   "current_city"
    t.string   "current_state"
    t.integer  "current_zip"
    t.string   "current_start_date"
    t.string   "current_end_date"
    t.string   "current_total_date"
    t.integer  "current_rent"
    t.string   "current_manager"
    t.string   "current_manager_phone"
    t.string   "current_reason"
    t.string   "previous_address"
    t.string   "previous_unit"
    t.string   "previous_city"
    t.string   "previous_state"
    t.integer  "previous_zip"
    t.string   "previous_start_date"
    t.string   "previous_end_date"
    t.string   "previous_total_date"
    t.integer  "previous_rent"
    t.string   "previous_manager"
    t.string   "previous_manager_phone"
    t.string   "previous_reason"
    t.string   "employer"
    t.string   "employer_address"
    t.string   "employer_city"
    t.string   "employer_state"
    t.integer  "employer_zip"
    t.string   "employer_start_date"
    t.string   "employer_total_date"
    t.integer  "employer_salary"
    t.string   "employer_title"
    t.string   "employer_supervisor"
    t.string   "employer_supervisor_title"
    t.string   "employer_supervisor_phone"
    t.string   "emergency_contact"
    t.string   "emergency_relationship"
    t.string   "emergency_phone"
    t.string   "vehicle_make"
    t.string   "vehicle_model"
    t.string   "vehicle_color"
    t.integer  "vehicle_year"
    t.string   "vehicle_license"
    t.string   "message"
    t.boolean  "acknowledgment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "leases", force: true do |t|
    t.string   "street"
    t.string   "unit"
    t.float    "rent"
    t.float    "deposit"
    t.string   "status"
    t.string   "tenant1_name"
    t.string   "tenant1_email"
    t.string   "tenant1_phone"
    t.string   "tenant2_name"
    t.string   "tenant2_email"
    t.string   "tenant2_phone"
    t.string   "tenant3_name"
    t.string   "tenant3_email"
    t.string   "tenant3_phone"
    t.string   "tenant4_name"
    t.string   "tenant5_email"
    t.string   "tenant6_phone"
    t.string   "lease_started"
    t.string   "lease_expires"
    t.integer  "late_payments"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "doc_file_name"
    t.string   "doc_content_type"
    t.integer  "doc_file_size"
    t.datetime "doc_updated_at"
    t.integer  "beds"
    t.float    "bath"
  end

  add_index "leases", ["user_id"], name: "index_leases_on_user_id"

  create_table "receipts", force: true do |t|
    t.string   "store"
    t.integer  "month"
    t.integer  "day"
    t.integer  "year"
    t.text     "description"
    t.string   "purchased_for"
    t.float    "price"
    t.string   "payment_method"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "rimage_file_name"
    t.string   "rimage_content_type"
    t.integer  "rimage_file_size"
    t.datetime "rimage_updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "receipts", ["user_id"], name: "index_receipts_on_user_id"

  create_table "repairs", force: true do |t|
    t.string   "description"
    t.string   "location_address"
    t.string   "phn"
    t.string   "repair_details"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "email"
  end

  add_index "repairs", ["user_id"], name: "index_repairs_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "phone"
    t.string   "address"
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
