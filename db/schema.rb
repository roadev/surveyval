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

ActiveRecord::Schema.define(version: 20160408023132) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answer", primary_key: "answer_id", force: :cascade do |t|
    t.string   "content"
    t.integer  "survey_question_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "answer", ["survey_question_id"], name: "index_answer_on_survey_question_id", using: :btree

  create_table "consumer", primary_key: "consumer_id", force: :cascade do |t|
    t.string   "ip_address"
    t.string   "email"
    t.string   "clave"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "result", primary_key: "result_id", force: :cascade do |t|
    t.integer  "survey_id"
    t.integer  "survey_question_id"
    t.string   "type_response"
    t.string   "response"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "result", ["survey_id"], name: "index_result_on_survey_id", using: :btree
  add_index "result", ["survey_question_id"], name: "index_result_on_survey_question_id", using: :btree

  create_table "survey", primary_key: "survey_id", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "consumer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "survey", ["consumer_id"], name: "index_survey_on_consumer_id", using: :btree

  create_table "survey_question", primary_key: "survey_question_id", force: :cascade do |t|
    t.string   "content"
    t.integer  "survey_id"
    t.integer  "cardinal"
    t.string   "type_question"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "survey_question", ["survey_id"], name: "index_survey_question_on_survey_id", using: :btree

  create_table "view", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "view", ["email"], name: "index_view_on_email", unique: true, using: :btree
  add_index "view", ["reset_password_token"], name: "index_view_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "answer", "survey_question", primary_key: "survey_question_id"
  add_foreign_key "result", "survey", primary_key: "survey_id"
  add_foreign_key "result", "survey_question", primary_key: "survey_question_id"
  add_foreign_key "survey", "consumer", primary_key: "consumer_id"
  add_foreign_key "survey_question", "survey", primary_key: "survey_id"
end
