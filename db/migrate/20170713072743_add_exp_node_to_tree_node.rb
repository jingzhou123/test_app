class AddExpNodeToTreeNode < ActiveRecord::Migration[5.1]
  def change
    add_column :tree_nodes, :type, :string
    add_column :tree_nodes, :exp_name, :string
  end
end
