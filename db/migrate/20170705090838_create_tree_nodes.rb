class CreateTreeNodes < ActiveRecord::Migration[5.1]
  def change
    create_table :tree_nodes do |t|
      t.references :parent, foreign_key: true

      t.timestamps
    end
  end
end
