class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :title
      t.text :content
      t.integer :user_id
      t.integer :course_id

      t.timestamps null: false

    end
  end
end
