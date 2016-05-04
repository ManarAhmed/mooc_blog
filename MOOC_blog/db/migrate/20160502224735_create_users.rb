class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.date :date_of_birth
      t.string :gender
      t.string :profile_picture
      t.integer :is_admin
      t.integer :is_active

      t.timestamps null: false
    end
  end
end
