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

ActiveRecord::Schema.define(version: 2021_01_08_080731) do

  create_table "menus", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "sun_menu"
    t.text "sun_making"
    t.string "mon_menu"
    t.text "mon_making"
    t.string "tue_menu"
    t.text "tue_making"
    t.string "wed_menu"
    t.text "wed_making"
    t.string "thu_menu"
    t.text "thu_making"
    t.string "fri_menu"
    t.text "fri_making"
    t.string "sat_menu"
    t.text "sat_making"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
