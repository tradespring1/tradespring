class AddUserIdIndexToPcomments < ActiveRecord::Migration
  def change
  	add_index  :pcomments, :user_id
  end
end
