class RegistrationsController < Devise::RegistrationsController
  protected
  def after_sign_up_path_for(user)
      if user.role == 'sponsor'
         new_sponsor_profile_path # Or :prefix_to_your_route
      else
        new_user_profile_path
      end
  end

end