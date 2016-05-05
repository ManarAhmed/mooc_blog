class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:account_update) << :name

    devise_parameter_sanitizer.for(:sign_up) << :date_of_birth
    devise_parameter_sanitizer.for(:account_update) << :date_of_birth

    devise_parameter_sanitizer.for(:sign_up) << :gender
    devise_parameter_sanitizer.for(:account_update) << :gender
    
    devise_parameter_sanitizer.for(:sign_up) << :user_type
    devise_parameter_sanitizer.for(:account_update) << :user_type
    
    devise_parameter_sanitizer.for(:sign_up) << :profile_picture
    devise_parameter_sanitizer.for(:account_update) << :profile_picture

    devise_parameter_sanitizer.for(:sign_up) << :is_active
    devise_parameter_sanitizer.for(:account_update) << :is_active

  end
end
