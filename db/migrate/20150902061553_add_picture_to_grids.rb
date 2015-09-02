class AddPictureToGrids < ActiveRecord::Migration
  def change
    change_table :grids do |t|
      t.string :picture
      t.remove :data, :mime_type
    end
  end
end
