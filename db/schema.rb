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

ActiveRecord::Schema.define(version: 20150120202055) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "last_name"
    t.string   "address"
    t.string   "city"
    t.string   "country"
    t.string   "phone"
    t.string   "cellphone"
    t.string   "social_security"
    t.string   "social_security_plan"
    t.string   "social_security_number"
    t.string   "marital_status"
    t.date     "birhtday"
    t.string   "profesion"
    t.string   "sex"
    t.integer  "job_hs"
    t.string   "job_type"
    t.decimal  "weight_max"
    t.decimal  "weight_min"
    t.decimal  "weight_avg"
    t.decimal  "weight_now"
    t.decimal  "weight_exp"
    t.text     "objective"
    t.string   "family"
    t.string   "cooks"
    t.string   "buys"
    t.string   "allergies"
    t.boolean  "kosher"
    t.boolean  "vegetarian"
    t.boolean  "ovolacto"
    t.boolean  "lacto"
    t.boolean  "pork"
    t.boolean  "meat"
    t.boolean  "chicken"
    t.boolean  "fish"
    t.boolean  "celiac"
    t.boolean  "swallowing"
    t.boolean  "mastication"
    t.boolean  "nausea"
    t.boolean  "diarrhea"
    t.boolean  "vomits"
    t.boolean  "constipation"
    t.boolean  "anemia"
    t.boolean  "hypertension"
    t.boolean  "diabetes"
    t.boolean  "heart_problems"
    t.boolean  "overweight"
    t.boolean  "cholesterol"
    t.boolean  "bulimia"
    t.boolean  "anorexia"
    t.boolean  "cancer"
    t.string   "cancer_type"
    t.string   "illness_other"
    t.boolean  "smoker"
    t.string   "smoker_amount"
    t.string   "medication"
    t.integer  "wrist_size"
    t.decimal  "height"
    t.string   "vitamins"
    t.string   "sport1"
    t.integer  "sport1_frecuency"
    t.string   "sport2"
    t.integer  "sport2_frecuency"
    t.string   "sport3"
    t.integer  "sport3_frecuency"
    t.date     "menstruation"
    t.string   "how_meet"
    t.text     "comments"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
