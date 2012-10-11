class RemoveCommenterFromScomments < ActiveRecord::Migration
  def change
  	remove_column :scomments, :commenter
  end
end
