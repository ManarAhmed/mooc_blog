class RegistrationsController < Devise::RegistrationsController
   
   def sign_up_params
   	params.require(:user).permit(:name, :email, :passowrd, :password_confirmation, :date_of_birth, :gender, :profile_picture)
   end
   
   def account_update_params
    	params.require(:user).permit(:name, :email, :passowrd, :password_confirmation, :date_of_birth, :gender, :profile_picture)
   end
   
   protected

  def after_sign_up_path_for(resources)
    redirect_to 'courses' # Or :prefix_to_your_route
     
  end
end
