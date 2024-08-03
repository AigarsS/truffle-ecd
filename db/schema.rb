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

ActiveRecord::Schema[7.1].define(version: 2024_07_29_101819) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "geometry_lines", force: :cascade do |t|
    t.bigint "start_point_id", null: false
    t.bigint "end_point_id", null: false
    t.bigint "beam_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["beam_id"], name: "index_geometry_lines_on_beam_id"
    t.index ["end_point_id"], name: "index_geometry_lines_on_end_point_id"
    t.index ["start_point_id"], name: "index_geometry_lines_on_start_point_id"
  end

  create_table "geometry_points", force: :cascade do |t|
    t.decimal "x"
    t.decimal "y"
    t.decimal "z"
    t.bigint "node_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["node_id"], name: "index_geometry_points_on_node_id"
  end

  create_table "members_beams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members_nodes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "geometry_lines", "geometry_points", column: "end_point_id"
  add_foreign_key "geometry_lines", "geometry_points", column: "start_point_id"
  add_foreign_key "geometry_lines", "members_beams", column: "beam_id"
  add_foreign_key "geometry_points", "members_nodes", column: "node_id"
end
