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

ActiveRecord::Schema[7.1].define(version: 2024_07_28_131427) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "coordinates_points", force: :cascade do |t|
    t.integer "x"
    t.integer "y"
    t.integer "z"
    t.bigint "node_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["node_id"], name: "index_coordinates_points_on_node_id"
  end

  create_table "primitive_types_beams", force: :cascade do |t|
    t.string "name"
    t.bigint "start_node_id", null: false
    t.bigint "end_node_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["end_node_id"], name: "index_primitive_types_beams_on_end_node_id"
    t.index ["start_node_id"], name: "index_primitive_types_beams_on_start_node_id"
  end

  create_table "primitive_types_nodes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "results_displacements", force: :cascade do |t|
    t.decimal "dx"
    t.decimal "dy"
    t.decimal "dz"
    t.decimal "rx"
    t.decimal "ry"
    t.decimal "rz"
    t.bigint "node_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["node_id"], name: "index_results_displacements_on_node_id"
  end

  create_table "results_reactions", force: :cascade do |t|
    t.decimal "fx"
    t.decimal "fy"
    t.decimal "fz"
    t.decimal "mx"
    t.decimal "my"
    t.decimal "mz"
    t.bigint "node_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["node_id"], name: "index_results_reactions_on_node_id"
  end

  add_foreign_key "coordinates_points", "primitive_types_nodes", column: "node_id"
  add_foreign_key "primitive_types_beams", "primitive_types_nodes", column: "end_node_id"
  add_foreign_key "primitive_types_beams", "primitive_types_nodes", column: "start_node_id"
  add_foreign_key "results_displacements", "primitive_types_nodes", column: "node_id"
  add_foreign_key "results_reactions", "primitive_types_nodes", column: "node_id"
end
