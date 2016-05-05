class AddAttachmentToLectures < ActiveRecord::Migration
  def change
    add_column :lectures, :attachment, :string
    add_column :lectures, :image, :string
  end
end
