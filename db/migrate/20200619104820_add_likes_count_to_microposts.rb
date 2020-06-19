class AddLikesCountToMicroposts < ActiveRecord::Migration[5.2]
  class MigrationUser < ApplicationRecord
    self.table_name = :microposts
  end

  def up
    _up
  rescue StandardError => e
    _down
    raise e
  end

  def down
    _down
  end

  private

  def _up
    MigrationUser.reset_column_information

    unless column_exists? :microposts, :likes_count
      add_column :microposts, :likes_count, :integer, null: false, default: 0
    end
  end

  def _down
    MigrationUser.reset_column_information

    remove_column :microposts, :likes_count if column_exists? :microposts, :likes_count
  end
end
