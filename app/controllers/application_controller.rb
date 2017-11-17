class ApplicationController < ActionController::Base
   before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :last_name, :role])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :avatar, :phonenumber, :last_name])

  end
   def after_sign_in_path_for(user) 
   		if user.role == 'sponsor'
   			 dashboard_path # Or :prefix_to_your_route
   		else
   			edit_user_password_path
  		end
	end
end
