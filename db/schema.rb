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

ActiveRecord::Schema.define(version: 20141126124148) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "centres", force: true do |t|
    t.string   "nom_centre"
    t.string   "phone"
    t.text     "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permissions", force: true do |t|
    t.datetime "date_debut"
    t.datetime "date_fin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personnels", force: true do |t|
    t.string   "n_decision"
    t.string   "n_mle"
    t.string   "n_nina"
    t.string   "nom"
    t.string   "prenom"
    t.datetime "date_nai"
    t.string   "lieu_nai"
    t.string   "sexe"
    t.string   "situ_f"
    t.integer  "nb_enf"
    t.string   "corps"
    t.string   "em_occ"
    t.string   "phone"
    t.string   "email"
    t.string   "compte_banc"
    t.string   "address"
    t.datetime "date_recr"
    t.decimal  "salaire_b"
    t.string   "regime_matrimonial"
    t.string   "nom_prenom_pere"
    t.datetime "date_nai_pere"
    t.string   "nom_prenom_mere"
    t.datetime "date_nai_mere"
    t.string   "etat"
    t.integer  "service_id"
    t.integer  "centre_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cover_file_name"
    t.string   "cover_content_type"
    t.integer  "cover_file_size"
    t.datetime "cover_updated_at"
  end

  add_index "personnels", ["centre_id"], name: "index_personnels_on_centre_id", using: :btree
  add_index "personnels", ["service_id"], name: "index_personnels_on_service_id", using: :btree

  create_table "services", force: true do |t|
    t.string   "nom_servie"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
