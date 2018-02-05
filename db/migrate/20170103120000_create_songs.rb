class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :song_name
      t.text :played_status
      t.timestamps
    end
  end
end