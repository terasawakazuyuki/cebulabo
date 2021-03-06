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

ActiveRecord::Schema.define(version: 2019_05_14_041931) do

  create_table "blogs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "blog_title"
    t.string "blog_image"
    t.text "blog_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "blog_category"
  end

  create_table "cities", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "hotel_name_ja"
    t.string "hotel_name_en"
    t.integer "hotel_lank"
    t.string "hotel_area"
    t.string "hotel_image"
    t.string "hotel_image_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "hotel_comment"
    t.text "map"
    t.text "facility"
    t.string "distance"
    t.string "url"
  end

  create_table "hotels", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "hotel_name_ja"
    t.string "hotel_name_en"
    t.integer "hotel_rank"
    t.string "hotel_area"
    t.string "hotel_image"
    t.string "hotel_image_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mactans", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "hotel_name_ja"
    t.string "hotel_name_en"
    t.integer "hotel_lank"
    t.string "hotel_area"
    t.string "hotel_image"
    t.string "hotel_image_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "others", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "hotel_name_ja"
    t.string "hotel_name_en"
    t.integer "hotel_lank"
    t.string "hotel_area"
    t.string "hotel_image"
    t.string "hotel_image_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "map"
    t.text "facility"
    t.string "distance"
    t.string "url"
    t.text "hotel_comment"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
