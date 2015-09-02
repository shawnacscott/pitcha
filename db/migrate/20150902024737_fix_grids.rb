class FixGrids < ActiveRecord::Migration
  def change
    change_table :grids do |t|
      t.belongs_to :user, index: true
      t.string :title
      t.binary :data
      t.string :filename
      t.string :mime_type
      t.timestamps
    end
  end
end
