class AddListeningUrlToMicroposts < ActiveRecord::Migration[5.2]
  def change
    add_column :microposts, :listening_url, :text
  end
end
