class AddColToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :video, :text
  end
end
