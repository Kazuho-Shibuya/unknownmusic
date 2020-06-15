class AddArtistToMicroposts < ActiveRecord::Migration[5.2]
  def change
    add_column :microposts, :artist, :string
  end
end
