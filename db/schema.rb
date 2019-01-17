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

ActiveRecord::Schema.define(version: 2019_01_17_071751) do

  create_table "awards", force: :cascade do |t|
    t.string "award_name"
    t.string "category"
    t.string "awardable_type"
    t.integer "awardable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["awardable_type", "awardable_id"], name: "index_awards_on_awardable_type_and_awardable_id"
  end

  create_table "films_personnels", id: false, force: :cascade do |t|
    t.integer "film_id", null: false
    t.integer "personnel_id", null: false
    t.index ["film_id", "personnel_id"], name: "index_films_personnels_on_film_id_and_personnel_id"
    t.index ["personnel_id", "film_id"], name: "index_films_personnels_on_personnel_id_and_film_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.string "genreable_type"
    t.integer "genreable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genreable_type", "genreable_id"], name: "index_genres_on_genreable_type_and_genreable_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.string "language"
    t.datetime "release_date"
    t.decimal "collection"
    t.decimal "budget"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personnels", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "series", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "premier_date"
    t.string "language"
    t.integer "seasons"
    t.integer "duration"
  end

  create_table "theaters", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tvs", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "premire_date"
    t.string "language"
    t.integer "episode"
    t.integer "duration"
  end

end
