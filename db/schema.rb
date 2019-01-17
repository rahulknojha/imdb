# frozen_string_literal: true

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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20_190_117_072_500) do
  create_table 'films_personnels', id: false, force: :cascade do |t|
    t.integer 'film_id', null: false
    t.integer 'personnel_id', null: false
    t.index %w[film_id personnel_id], name: 'index_films_personnels_on_film_id_and_personnel_id'
    t.index %w[personnel_id film_id], name: 'index_films_personnels_on_personnel_id_and_film_id'
  end

  create_table 'genre_series', id: false, force: :cascade do |t|
    t.integer 'series_id', null: false
    t.integer 'genre_id', null: false
    t.index ['genre_id'], name: 'index_genre_series_on_genre_id'
    t.index ['series_id'], name: 'index_genre_series_on_series_id'
  end

  create_table 'genre_tv', id: false, force: :cascade do |t|
    t.integer 'tv_id', null: false
    t.integer 'genre_id', null: false
  end

  create_table 'genres', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'movies', force: :cascade do |t|
    t.string 'title'
    t.string 'language'
    t.datetime 'release_date'
    t.integer 'collection'
    t.integer 'budget'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'personnels', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'reviews', force: :cascade do |t|
    t.integer 'rating'
    t.string 'review'
    t.datetime 'datetime'
    t.string 'reviewable_type'
    t.integer 'reviewable_id'
    t.integer 'user_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index %w[reviewable_type reviewable_id], name: 'index_reviews_on_reviewable_type_and_reviewable_id'
    t.index ['user_id'], name: 'index_reviews_on_user_id'
=======
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
>>>>>>> 2944d4773725742e8b0c9470c80130085f3f24f5
  end

  create_table 'roles', force: :cascade do |t|
    t.string 'title'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'series', force: :cascade do |t|
    t.string 'name'
    t.integer 'budget'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'theaters', force: :cascade do |t|
    t.string 'name'
    t.string 'address'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'tvs', force: :cascade do |t|
    t.string 'title'
    t.integer 'budget'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end
