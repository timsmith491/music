class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.date :dob
      t.string :image
      t.string :recordLabel

      t.timestamps
    end
  end
end
