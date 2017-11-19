class ApplicationController < ActionController::Base
   before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:admin, :name, :last_name, :role])
    devise_parameter_sanitizer.permit(:account_update, keys: [:admin, :name, :avatar, :phonenumber, :last_name])

  end
   def after_sign_in_path_for(user) 
     if user.admin?
        adminpanel_path
      else
   			 dashboard_path
   		end

	end

	def after_sign_out_path_for(user)
    	new_user_registration_path
  	end
  def authorize_admin
    redirect_to root_path, alert: "You don't have permission"  unless current_user.admin

end
end
