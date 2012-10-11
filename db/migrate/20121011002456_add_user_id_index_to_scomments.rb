class AddUserIdIndexToScomments < ActiveRecord::Migration
  def change
  	add_index  :scomments, :user_id
  end
end
