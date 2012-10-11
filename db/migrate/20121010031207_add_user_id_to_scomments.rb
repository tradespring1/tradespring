class AddUserIdToScomments < ActiveRecord::Migration
  def change
    add_column :scomments, :user_id, :integer
  end
end
