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


ActiveRecord::Schema.define(version: 2019_01_21_075233) do
  create_table 'active_storage_attachments', force: :cascade do |t|
    t.string 'name', null: false
    t.string 'record_type', null: false
    t.integer 'record_id', null: false
    t.integer 'blob_id', null: false
    t.datetime 'created_at', null: false
    t.index ['blob_id'], name: 'index_active_storage_attachments_on_blob_id'
    t.index %w[record_type record_id name blob_id], name: 'index_active_storage_attachments_uniqueness', unique: true
  end

  create_table 'active_storage_blobs', force: :cascade do |t|
    t.string 'key', null: false
    t.string 'filename', null: false
    t.string 'content_type'
    t.text 'metadata'
    t.bigint 'byte_size', null: false
    t.string 'checksum', null: false
    t.datetime 'created_at', null: false
    t.index ['key'], name: 'index_active_storage_blobs_on_key', unique: true
  end

  create_table 'awards', force: :cascade do |t|
    t.string 'award_name'
    t.string 'category'
    t.string 'awardable_type'
    t.integer 'awardable_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index %w[awardable_type awardable_id], name: 'index_awards_on_awardable_type_and_awardable_id'
  end

  create_table 'genres', force: :cascade do |t|
    t.string 'name'
    t.string 'genreable_type'
    t.integer 'genreable_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index %w[genreable_type genreable_id], name: 'index_genres_on_genreable_type_and_genreable_id'

  create_table "films_personnels", id: false, force: :cascade do |t|
    t.integer "film_id", null: false
    t.integer "personnel_id", null: false
    t.index ["film_id", "personnel_id"], name: "index_films_personnels_on_film_id_and_personnel_id"
    t.index ["personnel_id", "film_id"], name: "index_films_personnels_on_personnel_id_and_film_id"
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

  create_table 'movies_personnels', id: false, force: :cascade do |t|
    t.integer 'movie_id', null: false
    t.integer 'personnel_id', null: false
    t.index [nil], name: 'index_movies_personnels_on_movies_id'
    t.index [nil], name: 'index_movies_personnels_on_personnels_id'
  end

  create_table 'personnels', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
  
  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.string "review"
    t.datetime "datetime"
    t.string "reviewable_type"
    t.integer "reviewable_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reviewable_type", "reviewable_id"], name: "index_reviews_on_reviewable_type_and_reviewable_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
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

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end