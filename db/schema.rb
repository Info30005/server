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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150401135819) do

  create_table "album_comments", force: true do |t|
    t.integer  "comment_id"
    t.integer  "album_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "album_ratings", force: true do |t|
    t.integer  "album_id"
    t.integer  "user_id"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "albums", force: true do |t|
    t.string   "title"
    t.string   "imagepath"
    t.text     "description"
    t.integer  "downloads"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.integer  "user_id"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "comment_type"
  end

  create_table "followers", force: true do |t|
    t.integer  "user_id"
    t.integer  "follower_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "media", force: true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "file_path"
    t.string   "image_path"
    t.integer  "downloads"
    t.string   "media_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medium_comments", force: true do |t|
    t.integer  "comment_id"
    t.integer  "medium_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "music_albums", force: true do |t|
    t.integer  "music_id"
    t.integer  "album_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "musics", force: true do |t|
    t.string   "image_path"
    t.integer  "medium_id"
    t.integer  "plays"
    t.string   "genre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personal_comments", force: true do |t|
    t.integer  "comment_id"
    t.integer  "to_user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "playlist_musics", force: true do |t|
    t.integer  "playlist_id"
    t.integer  "music_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "playlists", force: true do |t|
    t.integer  "user_id"
    t.text     "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ratings", force: true do |t|
    t.integer  "medium_id"
    t.integer  "user_id"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.string   "website_link"
    t.text     "tracks_heard"
    t.string   "image_path"
  end

end