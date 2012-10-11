class RemoveCommenterFromPcomments < ActiveRecord::Migration
  def change
  	remove_column :pcomments, :commenter
  end
end
