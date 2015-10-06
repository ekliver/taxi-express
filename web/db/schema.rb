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

ActiveRecord::Schema.define(version: 20151006072217) do

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "visits_count"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
  end

  add_index "articles", ["user_id"], name: "index_articles_on_user_id"

  create_table "drivers", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "dni"
    t.string   "sexo"
    t.string   "formapago"
    t.string   "licencia"
    t.string   "tarjeta"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "passengers", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "dni"
    t.string   "sexo"
    t.string   "formapago"
    t.string   "tarjeta"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.integer  "passenger_id"
    t.string   "distini"
    t.string   "distfin"
    t.integer  "monto"
    t.string   "direcexini"
    t.string   "directexfin"
    t.integer  "pasajeros"
    t.string   "tipovehiculo"
    t.string   "tipopago"
    t.string   "estado"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "requests", ["passenger_id"], name: "index_requests_on_passenger_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.string   "permission_level"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vehicles", force: :cascade do |t|
    t.string   "marca"
    t.string   "modelo"
    t.string   "ano"
    t.string   "color"
    t.string   "pasajeros"
    t.string   "tipo"
    t.integer  "passenger_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "vehicles", ["passenger_id"], name: "index_vehicles_on_passenger_id"

end
