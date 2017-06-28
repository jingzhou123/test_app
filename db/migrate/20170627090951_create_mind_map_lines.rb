class CreateMindMapLines < ActiveRecord::Migration[5.1]
  def change
    create_table :mind_map_lines do |t|
      t.belongs_to :other_node, index: true
      t.belongs_to :mind_map_node, index: true
      t.timestamps
    end
  end
end
