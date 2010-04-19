# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100325163344) do

  create_table "address_type_translations", :force => true do |t|
    t.string   "locale"
    t.integer  "address_type_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "address_types", :force => true do |t|
  end

  create_table "addresses", :force => true do |t|
    t.integer  "owner_id"
    t.string   "owner_type"
    t.integer  "type_id"
    t.string   "address"
    t.integer  "city_id"
    t.integer  "division1_id"
    t.integer  "division2_id"
    t.integer  "division3_id"
    t.integer  "division4_id"
    t.integer  "country_id"
    t.string   "zip"
    t.decimal  "lat",          :precision => 15, :scale => 10
    t.decimal  "lng",          :precision => 15, :scale => 10
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", :force => true do |t|
    t.integer "country_id",                                                  :null => false
    t.integer "geonames_id",                                                 :null => false
    t.string  "name",                                                        :null => false
    t.decimal "latitude",                     :precision => 14, :scale => 8, :null => false
    t.decimal "longitude",                    :precision => 14, :scale => 8, :null => false
    t.string  "country_iso_code_two_letters"
    t.integer "geonames_timezone_id"
    t.string  "code"
    t.integer "division_id"
  end

  add_index "cities", ["code"], :name => "index_cities_on_code"
  add_index "cities", ["division_id"], :name => "index_cities_on_division_id"
  add_index "cities", ["geonames_id"], :name => "index_cities_on_geonames_id", :unique => true

  create_table "contacts", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.date     "birthday"
  end

  create_table "countries", :force => true do |t|
    t.string  "iso_code_two_letter",                   :null => false
    t.string  "iso_code_three_letter",                 :null => false
    t.integer "iso_number",                            :null => false
    t.string  "name",                                  :null => false
    t.string  "capital"
    t.string  "continent"
    t.integer "geonames_id",                           :null => false
    t.string  "alternate_names",       :limit => 5000
  end

  add_index "countries", ["geonames_id"], :name => "index_countries_on_geonames_id"
  add_index "countries", ["iso_code_two_letter"], :name => "index_countries_on_iso_code_two_letter", :unique => true

  create_table "divisions", :force => true do |t|
    t.integer "country_id",                                                                                 :null => false
    t.integer "parent_id"
    t.integer "level",                                                                       :default => 1
    t.string  "code",                                                                                       :null => false
    t.integer "geonames_id",                                                                                :null => false
    t.string  "name",                                                                                       :null => false
    t.string  "alternate_names",              :limit => 5000
    t.decimal "latitude",                                     :precision => 14, :scale => 8,                :null => false
    t.decimal "longitude",                                    :precision => 14, :scale => 8,                :null => false
    t.string  "country_iso_code_two_letters"
    t.integer "geonames_timezone_id"
  end

  add_index "divisions", ["code"], :name => "index_divisions_on_code"
  add_index "divisions", ["geonames_id"], :name => "index_divisions_on_geonames_id", :unique => true
  add_index "divisions", ["parent_id"], :name => "index_divisions_on_parent_id"

  create_table "email_type_translations", :force => true do |t|
    t.string   "locale"
    t.integer  "email_type_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "email_types", :force => true do |t|
  end

  create_table "emails", :force => true do |t|
    t.integer  "owner_id"
    t.string   "owner_type"
    t.integer  "type_id"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "identification_type_translations", :force => true do |t|
    t.string   "locale"
    t.integer  "identification_type_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "identification_types", :force => true do |t|
  end

  create_table "identifications", :force => true do |t|
    t.integer  "owner_id"
    t.string   "owner_type"
    t.integer  "type_id"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "instant_messenger_protocols", :force => true do |t|
    t.string "name"
  end

  create_table "instant_messenger_type_translations", :force => true do |t|
    t.string   "locale"
    t.integer  "instant_messenger_type_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "instant_messenger_types", :force => true do |t|
  end

  create_table "instant_messengers", :force => true do |t|
    t.integer  "owner_id"
    t.string   "owner_type"
    t.integer  "protocol_id"
    t.integer  "type_id"
    t.string   "nick"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phone_type_translations", :force => true do |t|
    t.string   "locale"
    t.integer  "phone_type_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phone_types", :force => true do |t|
  end

  create_table "phones", :force => true do |t|
    t.integer  "owner_id"
    t.string   "owner_type"
    t.integer  "type_id"
    t.string   "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "website_type_translations", :force => true do |t|
    t.string   "locale"
    t.integer  "website_type_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "website_types", :force => true do |t|
  end

  create_table "websites", :force => true do |t|
    t.integer  "owner_id"
    t.string   "owner_type"
    t.integer  "type_id"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
