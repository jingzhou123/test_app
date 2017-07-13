class CreateExplorerNodes < ActiveRecord::Migration[5.1]
  def change
    create_table :explorer_nodes do |t|
      t.string :name
      t.integer :node_type, default: 0, null: false
      t.references :parent

      t.timestamps
    end
  end
end
