class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :name
      t.string :type
      t.belongs_to :state
      t.belongs_to :county

      t.timestamps
    end
  end
end
