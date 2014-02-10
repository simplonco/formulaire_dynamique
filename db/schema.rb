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

ActiveRecord::Schema.define(version: 20140210150821) do

  create_table "annonces", force: true do |t|
    t.string   "titre"
    t.text     "question"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reponses", force: true do |t|
    t.text     "texte_reponse"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "annonce_id"
  end

  add_index "reponses", ["annonce_id"], name: "index_reponses_on_annonce_id"

end
