class DropPcommentsTable < ActiveRecord::Migration
  def change
  	drop_table :pcomments
  end
end
