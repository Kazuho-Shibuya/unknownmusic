class AddSongToMicroposts < ActiveRecord::Migration[5.2]
  def change
    add_column :microposts, :song, :string
  end
end
