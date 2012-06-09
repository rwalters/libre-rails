class AddUserToPiecesTable < ActiveRecord::Migration
  def self.up
    add_column :pieces, :user_id, :integer
  end

  def self.down
    remove_column :pieces, :user_id
  end
end
