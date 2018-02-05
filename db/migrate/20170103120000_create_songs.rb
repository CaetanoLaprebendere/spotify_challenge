class CreateSongs < ActiveRecord::Migration
  def change
    create_table :playlist do |t|
      t.string :song_name
      t.text :played_status
      t.timestamps
    end
  end
end
end