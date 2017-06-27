class CreateMindMaps < ActiveRecord::Migration[5.1]
  def change
    create_table :mind_maps do |t|
      t.string :name

      t.timestamps
    end
  end
end
