class DropScommentsTable < ActiveRecord::Migration
  def change
  	drop_table :scomments
  end
end
