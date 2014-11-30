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

ActiveRecord::Schema.define(version: 20141130111928) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "centres", force: true do |t|
    t.string   "nom_centre"
    t.string   "phone"
    t.text     "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "deces", force: true do |t|
    t.datetime "date_dc"
    t.string   "local"
    t.string   "nom"
    t.string   "prenom"
    t.datetime "date_nai"
    t.string   "lieu_nai"
    t.string   "sexe"
    t.string   "situ_mat"
    t.string   "profession"
    t.string   "domicil"
    t.string   "nom_prenom_pere"
    t.string   "nom_prenom_mere"
    t.string   "nom_prenom_declare"
    t.string   "domicil_declare"
    t.string   "profession_declare"
    t.datetime "date_declare_dece"
    t.string   "nom_prenom_officie"
    t.string   "qualite_officie"
    t.datetime "date_officie"
    t.string   "n_volet"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mariages", force: true do |t|
    t.string   "nom_mari"
    t.string   "prenom_mari"
    t.datetime "date_nai_mari"
    t.string   "lieu_nai_mari"
    t.string   "profession_mari"
    t.string   "domicil_mari"
    t.string   "nom_prenom_pere_mari"
    t.string   "nom_prenom_mere_mari"
    t.string   "nom_prenom_tm_mari"
    t.datetime "date_nai_tm_mari"
    t.string   "lieu_nai_tm_mari"
    t.string   "domicil_tm_mari"
    t.string   "nom_marie"
    t.string   "prenom_marie"
    t.datetime "date_nai_marie"
    t.string   "lieu_nai_marie"
    t.string   "profession_marie"
    t.string   "domicil_marie"
    t.string   "nom_prenom_pere_marie"
    t.string   "nom_prenom_mere_marie"
    t.string   "consente_parent"
    t.string   "nom_prenom_tm_marie"
    t.datetime "date_nai_tm_marie"
    t.string   "lieu_nai_tm_marie"
    t.string   "domicil_tm_marie"
    t.decimal  "dot"
    t.string   "nom_prenom_officie"
    t.string   "qualite_officie"
    t.datetime "date_officie"
    t.string   "n_volet"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "naissances", force: true do |t|
    t.datetime "date_n"
    t.string   "nom"
    t.string   "prenom"
    t.string   "sexe"
    t.string   "local"
    t.string   "nom_prenom_pere"
    t.string   "domicil_pere"
    t.datetime "date_nai_pere"
    t.string   "nationalite_pere"
    t.string   "profession_pere"
    t.string   "nom_prenom_mere"
    t.string   "domicil_mere"
    t.datetime "date_nai_mere"
    t.string   "nationalite_mere"
    t.string   "profession_mere"
    t.string   "nom_prenom_declare"
    t.string   "domicil_declare"
    t.datetime "date_nai_declare"
    t.datetime "date_declare"
    t.string   "nom_prenom_officie"
    t.string   "qualite_officie"
    t.datetime "date_officie"
    t.string   "n_volet"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permissions", force: true do |t|
    t.integer  "personnel_id"
    t.datetime "date_debut"
    t.datetime "date_fin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "permissions", ["personnel_id"], name: "index_permissions_on_personnel_id", using: :btree

  create_table "personnels", force: true do |t|
    t.string   "n_decision"
    t.string   "n_mle"
    t.string   "n_nina"
    t.string   "nom"
    t.string   "prenom"
    t.date     "date_nai",           default: '2014-11-27'
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
    t.date     "date_recr"
    t.decimal  "salaire_b"
    t.string   "regime_matrimonial"
    t.string   "nom_prenom_pere"
    t.date     "date_nai_pere"
    t.string   "nom_prenom_mere"
    t.date     "date_nai_mere"
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
    t.string   "nom_service"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
