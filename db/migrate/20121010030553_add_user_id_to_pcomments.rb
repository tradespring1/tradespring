class AddUserIdToPcomments < ActiveRecord::Migration
  def change
    add_column :pcomments, :user_id, :integer
  end
end
