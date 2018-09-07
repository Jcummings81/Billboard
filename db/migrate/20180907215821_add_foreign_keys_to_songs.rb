class AddForeignKeysToSongs < ActiveRecord::Migration[5.2]
  def change
    add_reference :songs, :artist, foreign_key: true
    add_reference :songs, :board, foreign_key: true
  end
end
