# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_14_130325) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "responses", force: :cascade do |t|
    t.string "name"
    t.text "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "rsvp"
    t.string "dietary_requirements"
    t.string "diet_details"
    t.bigint "user_id"
    t.string "plus1_first_name"
    t.string "plus1_surname"
    t.string "plus1_dietary_requirements"
    t.string "plus1_diet_details"
    t.string "plus1_rsvp"
    t.string "guest1_first_name"
    t.string "guest1_surname"
    t.string "guest1_rsvp"
    t.string "guest1_dietary_requirements"
    t.string "guest1_diet_details"
    t.string "guest2_first_name"
    t.string "guest2_surname"
    t.string "guest2_rsvp"
    t.string "guest2_dietary_requirements"
    t.string "guest2_diet_details"
    t.string "guest3_first_name"
    t.string "guest3_surname"
    t.string "guest3_rsvp"
    t.string "guest3_dietary_requirements"
    t.string "guest3_diet_details"
    t.string "guest4_first_name"
    t.string "guest4_surname"
    t.string "guest4_rsvp"
    t.string "guest4_dietary_requirements"
    t.string "guest4_diet_details"
    t.integer "number_of_guests"
    t.index ["user_id"], name: "index_responses_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "surname"
    t.string "email"
    t.string "auth_token"
    t.string "password_reset_token"
    t.datetime "password_reset_sent_at"
  end

  add_foreign_key "responses", "users"
end
