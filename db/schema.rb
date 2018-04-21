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

ActiveRecord::Schema.define(version: 20180421190722) do

  create_table "email_messages", force: :cascade do |t|
    t.string "recipient_email"
    t.string "recipient_full_name"
    t.string "recipient_preferred_language"
    t.string "sender_full_name"
    t.string "sender_email"
    t.text "transcription"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "raw_video"
  end

end
