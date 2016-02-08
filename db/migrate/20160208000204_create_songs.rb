class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.string :image
      t.integer :rating
      t.integer :duration
      t.integer :artist_id

      t.timestamps
    end
  end
end
