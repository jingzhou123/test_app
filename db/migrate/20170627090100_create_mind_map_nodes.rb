class CreateMindMapNodes < ActiveRecord::Migration[5.1]
  def change
    create_table :mind_map_nodes do |t|
      t.text :content
      t.belongs_to :mind_map

      t.timestamps
    end
  end
end
