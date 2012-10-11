class CreateScomments < ActiveRecord::Migration
  def change
    create_table :scomments do |t|
      t.string :commenter
      t.string :body
      t.references :sale

      t.timestamps
    end
    add_index :scomments, :sale_id
  end
end
