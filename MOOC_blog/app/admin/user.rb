ActiveAdmin.register User do
  permit_params :name,:email, :password, :password_confirmation,:gender ,:date_of_birth,:profile_picture
  index do
      selectable_column
      id_column
      column :email
      column :current_sign_in_at
      column :sign_in_count
      column :created_at
      actions
    end
    filter :email
    filter :current_sign_in_at
    filter :sign_in_count
    filter :created_at
    form do |f|
      f.inputs "Admin Details" do
      	f.input :name
        f.input :email
        f.input :password
        f.input :password_confirmation
        f.input :gender
        f.text_field :date_of_birth,"data-provide" => 'datepicker'
        f.file_field  :profile_picture
      end
      f.actions
    end
  
end
