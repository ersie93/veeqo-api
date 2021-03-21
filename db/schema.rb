# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_21_101123) do

  create_table "boxes", force: :cascade do |t|
    t.string "name"
    t.float "width"
    t.float "height"
    t.float "depth"
    t.float "weight_resistance"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "box_id"
  end

  create_table "orders_to_products", force: :cascade do |t|
    t.integer "quantity"
    t.integer "product_id", null: false
    t.integer "order_id", null: false
    t.integer "unit_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_orders_to_products_on_order_id"
    t.index ["product_id"], name: "index_orders_to_products_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.float "width"
    t.float "height"
    t.float "depth"
    t.string "dimensions_unit"
    t.text "description"
    t.integer "stock"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "price"
    t.float "weight_grams"
    t.float "weight_unit"
  end

  add_foreign_key "orders_to_products", "orders"
  add_foreign_key "orders_to_products", "products"
end
