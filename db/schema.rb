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

ActiveRecord::Schema.define(version: 2019_04_10_000437) do

  create_table "answers", force: :cascade do |t|
    t.string "answer"
    t.integer "question_id"
    t.integer "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_answers_on_patient_id"
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "date_of_visit"
    t.string "reason_for_visit"
    t.integer "volunteer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["volunteer_id"], name: "index_patients_on_volunteer_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "question"
    t.integer "survey_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["survey_id"], name: "index_questions_on_survey_id"
  end

  create_table "surveys", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "volunteers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "organization"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
