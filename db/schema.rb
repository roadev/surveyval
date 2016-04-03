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

ActiveRecord::Schema.define(version: 2017030403924) do

  create_table "answer", primary_key: "answer_id", force: :cascade do |t|
    t.string   "content"
    t.integer  "survey_question_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "answer", ["survey_question_id"], name: "index_answer_on_survey_question_id"

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

  add_index "result", ["survey_id"], name: "index_result_on_survey_id"
  add_index "result", ["survey_question_id"], name: "index_result_on_survey_question_id"

  create_table "survey", primary_key: "survey_id", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "consumer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "survey", ["consumer_id"], name: "index_survey_on_consumer_id"

  create_table "survey_question", primary_key: "survey_question_id", force: :cascade do |t|
    t.string   "content"
    t.integer  "survey_id"
    t.integer  "cardinal"
    t.string   "type_question"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "survey_question", ["survey_id"], name: "index_survey_question_on_survey_id"

end
