class ApplicationController < ActionController::Base
  
before_action :configure_permitted_parameters, :only => [:create]

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:enrollment_number, :full_name ,:contact_number , :branch, :semester ,:password_confirmation, :email, :password) }
    end



  protect_from_forgery with: :exception
end
