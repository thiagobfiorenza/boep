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

ActiveRecord::Schema.define(:version => 20090120210058) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories_suppliers", :id => false, :force => true do |t|
    t.integer "category_id"
    t.integer "supplier_id"
  end

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.string   "document"
    t.string   "email"
    t.date     "birth"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "phone"
    t.string   "postcode"
    t.string   "mobile"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "unit_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products_suppliers", :id => false, :force => true do |t|
    t.integer "product_id"
    t.integer "supplier_id"
  end

  create_table "suppliers", :force => true do |t|
    t.string   "name"
    t.string   "document"
    t.string   "email"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "phone"
    t.string   "postcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "units", :force => true do |t|
    t.string   "name"
    t.string   "abbr"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name",                     :null => false
    t.string   "login",      :limit => 16, :null => false
    t.string   "password",                 :null => false
    t.string   "kind",                     :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
