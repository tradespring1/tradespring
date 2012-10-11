class CreatePcomments < ActiveRecord::Migration
  def change
    create_table :pcomments do |t|
      t.string :commenter
      t.string :body
      t.references :purchase

      t.timestamps
    end
    add_index :pcomments, :purchase_id
  end
end
