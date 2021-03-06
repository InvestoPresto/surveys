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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110927121142) do

  create_table "active_admin_comments", :force => true do |t|
    t.integer   "resource_id",   :null => false
    t.string    "resource_type", :null => false
    t.integer   "author_id"
    t.string    "author_type"
    t.text      "body"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string    "email",                                 :default => "", :null => false
    t.string    "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string    "reset_password_token"
    t.timestamp "reset_password_sent_at"
    t.timestamp "remember_created_at"
    t.integer   "sign_in_count",                         :default => 0
    t.timestamp "current_sign_in_at"
    t.timestamp "last_sign_in_at"
    t.string    "current_sign_in_ip"
    t.string    "last_sign_in_ip"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "answers", :force => true do |t|
    t.integer   "question_id"
    t.text      "content"
    t.integer   "user_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  add_index "answers", ["question_id"], :name => "index_answers_on_question_id"
  add_index "answers", ["user_id"], :name => "index_answers_on_user_id"

  create_table "choices", :force => true do |t|
    t.integer   "question_id"
    t.text      "content"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  add_index "choices", ["question_id"], :name => "index_choices_on_question_id"

  create_table "questions", :force => true do |t|
    t.integer   "section_id"
    t.text      "content"
    t.string    "type"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  add_index "questions", ["section_id"], :name => "index_questions_on_survey_id"

  create_table "sections", :force => true do |t|
    t.integer   "survey_id"
    t.string    "title"
    t.string    "style"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  add_index "sections", ["survey_id"], :name => "index_sections_on_survey_id"

  create_table "surveys", :force => true do |t|
    t.string    "name"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.text      "description"
    t.string    "confirmation"
    t.string    "next_url"
  end

  create_table "users", :force => true do |t|
    t.string    "provider"
    t.string    "uid"
    t.string    "name"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "email"
  end

end
