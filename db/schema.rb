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

ActiveRecord::Schema.define(version: 20181101162009) do

  create_table "business_streams", force: :cascade do |t|
    t.string "business_stream_name", limit: 100
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "company_name", limit: 100
    t.string "profile_description", limit: 1000
    t.integer "business_stream_id"
    t.date "establishment_date"
    t.string "company_website_url", limit: 500
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_stream_id"], name: "index_companies_on_business_stream_id"
  end

  create_table "company_images", force: :cascade do |t|
    t.integer "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_images_on_company_id"
  end

  create_table "education_details", force: :cascade do |t|
    t.integer "user_account_id"
    t.string "certificate_degree_name", limit: 50
    t.string "major", limit: 50
    t.string "institute_university_name", limit: 50
    t.date "starting_date"
    t.date "completion_date"
    t.integer "percentage", limit: 8
    t.integer "cgpa", limit: 8
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_account_id"], name: "index_education_details_on_user_account_id"
  end

  create_table "experience_details", force: :cascade do |t|
    t.string "is_current_job"
    t.date "start_date"
    t.date "end_date"
    t.string "job_title", limit: 50
    t.string "company_name", limit: 100
    t.string "job_location_city", limit: 50
    t.string "job_location_state", limit: 50
    t.string "job_location_country", limit: 50
    t.text "description", limit: 4000
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_account_id"
    t.index ["user_account_id"], name: "index_experience_details_on_user_account_id"
  end

  create_table "job_locations", force: :cascade do |t|
    t.string "street_address", limit: 100
    t.string "city", limit: 50
    t.string "state", limit: 50
    t.string "country", limit: 50
    t.string "zip", limit: 50
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_post_activities", force: :cascade do |t|
    t.integer "user_account_id"
    t.integer "job_post_id"
    t.date "apply_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_post_id"], name: "index_job_post_activities_on_job_post_id"
    t.index ["user_account_id"], name: "index_job_post_activities_on_user_account_id"
  end

  create_table "job_post_skill_sets", force: :cascade do |t|
    t.integer "skill_set_id"
    t.integer "job_post_id"
    t.integer "skill_level", limit: 8
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_post_id"], name: "index_job_post_skill_sets_on_job_post_id"
    t.index ["skill_set_id"], name: "index_job_post_skill_sets_on_skill_set_id"
  end

  create_table "job_posts", force: :cascade do |t|
    t.integer "posted_by_id", limit: 8
    t.integer "job_type_id"
    t.integer "company_id"
    t.string "is_company_name_hidden", limit: 1
    t.date "created_date"
    t.text "job_description", limit: 500
    t.integer "job_location_id"
    t.string "is_active", limit: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_job_posts_on_company_id"
    t.index ["job_location_id"], name: "index_job_posts_on_job_location_id"
    t.index ["job_type_id"], name: "index_job_posts_on_job_type_id"
  end

  create_table "job_types", force: :cascade do |t|
    t.string "job_type", limit: 20
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seeker_profiles", force: :cascade do |t|
    t.integer "user_account_id"
    t.string "first_name", limit: 50
    t.string "last_name", limit: 50
    t.decimal "current_salary", precision: 15, scale: 2
    t.string "is_annually_monthly", limit: 1
    t.string "currency", limit: 50
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_account_id"], name: "index_seeker_profiles_on_user_account_id"
  end

  create_table "seeker_skill_sets", force: :cascade do |t|
    t.integer "user_account_id"
    t.integer "skill_set_id"
    t.integer "skill_level", limit: 8
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skill_set_id"], name: "index_seeker_skill_sets_on_skill_set_id"
    t.index ["user_account_id"], name: "index_seeker_skill_sets_on_user_account_id"
  end

  create_table "skill_sets", force: :cascade do |t|
    t.string "skill_set_name", limit: 50
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_accounts", force: :cascade do |t|
    t.integer "user_type_id"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.date "date_of_birth"
    t.string "gender", limit: 1
    t.string "is_active", limit: 1
    t.integer "contact_number", limit: 10
    t.string "sms_notification_active", limit: 1
    t.string "email_notification_active", limit: 1
    t.date "registration_date"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_user_accounts_on_confirmation_token", unique: true
    t.index ["email"], name: "index_user_accounts_on_email", unique: true
    t.index ["reset_password_token"], name: "index_user_accounts_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_user_accounts_on_unlock_token", unique: true
    t.index ["user_type_id"], name: "index_user_accounts_on_user_type_id"
  end

  create_table "user_logs", force: :cascade do |t|
    t.integer "user_account_id"
    t.date "last_login_date"
    t.date "last_job_apply_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_account_id"], name: "index_user_logs_on_user_account_id"
  end

  create_table "user_types", force: :cascade do |t|
    t.string "user_type_name", limit: 20
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
