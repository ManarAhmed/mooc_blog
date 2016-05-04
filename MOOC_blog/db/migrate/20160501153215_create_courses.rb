class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_title

      t.timestamps null: false

      t.integer :user_id
    end
  end
end
