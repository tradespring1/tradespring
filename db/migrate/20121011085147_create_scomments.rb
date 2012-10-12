class CreateScomments < ActiveRecord::Migration
  def change
    create_table :scomments do |t|
      t.string :body
      t.references :sale
      t.references :user

      t.timestamps
    end
    add_index :scomments, :sale_id
    add_index :scomments, :user_id
  end
end
