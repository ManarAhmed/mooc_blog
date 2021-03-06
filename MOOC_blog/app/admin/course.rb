ActiveAdmin.register Course do
  permit_params :course_title, :image,:user_id
  index do
      selectable_column
      id_column
      column :course_title
      column :image
      column :created_at
      actions
    end
    filter :course_title
    filter :created_at
    form do |f|
      f.inputs "Admin Details" do
        f.input :course_title
        f.file_field  :image
      end
      f.actions
    end
  
end
