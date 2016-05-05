ActiveAdmin.register Lecture do
  permit_params :title,:content, :image,:attachment ,:user_id, :course_id
  index do
      selectable_column
      id_column
      column :title
      column :content
      column :image
      column :attachment
      column :created_at
      actions
    end
    filter :title
    filter :created_at
    form do |f|
      f.inputs "Admin Details" do
        f.input :title
        f.input :content
        f.file_field  :image
        f.file_field  :attachment
      end
      f.actions
    end
  
end
