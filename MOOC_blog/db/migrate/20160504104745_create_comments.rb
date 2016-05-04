class CreateComments < ActiveRecord::Migration
  drop_table :comments
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :lecture_id
      t.string :comment_title
      t.text :body

      t.timestamps null: false
    end
    add_index :comments, :user_id
    add_index :comments, :lecture_id
  end
end
