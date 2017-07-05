class AddTreeToTreeNode < ActiveRecord::Migration[5.1]
  def change
    add_reference :tree_nodes, :tree, foreign_key: true
  end
end
