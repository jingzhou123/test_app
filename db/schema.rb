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

ActiveRecord::Schema.define(version: 20170713075117) do

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.integer "manager_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manager_id"], name: "index_employees_on_manager_id"
  end

  create_table "explorer_nodes", force: :cascade do |t|
    t.string "name"
    t.integer "node_type", default: 0, null: false
    t.integer "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parent_id"], name: "index_explorer_nodes_on_parent_id"
  end

  create_table "mind_map_lines", force: :cascade do |t|
    t.integer "other_node_id"
    t.integer "mind_map_node_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mind_map_node_id"], name: "index_mind_map_lines_on_mind_map_node_id"
    t.index ["other_node_id"], name: "index_mind_map_lines_on_other_node_id"
  end

  create_table "mind_map_nodes", force: :cascade do |t|
    t.text "content"
    t.integer "mind_map_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mind_map_id"], name: "index_mind_map_nodes_on_mind_map_id"
  end

  create_table "mind_maps", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.integer "state_id"
    t.integer "county_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["county_id"], name: "index_places_on_county_id"
    t.index ["state_id"], name: "index_places_on_state_id"
  end

  create_table "tree_nodes", force: :cascade do |t|
    t.integer "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "tree_id"
    t.integer "exp_folder_id"
    t.string "type"
    t.string "exp_name"
    t.index ["exp_folder_id"], name: "index_tree_nodes_on_exp_folder_id"
    t.index ["parent_id"], name: "index_tree_nodes_on_parent_id"
    t.index ["tree_id"], name: "index_tree_nodes_on_tree_id"
  end

  create_table "trees", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
