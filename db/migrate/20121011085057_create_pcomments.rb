class CreatePcomments < ActiveRecord::Migration
  def change
    create_table :pcomments do |t|
      t.string :body
      t.references :purchase
      t.references :user

      t.timestamps
    end
    add_index :pcomments, :purchase_id
    add_index :pcomments, :user_id
  end
end
