class PagesController < ApplicationController
  def userlist
  	if user_signed_in? && current_user.admin? 
  		@user_profiles = UserProfile.all
  	elsif user_signed_in? && current_user.role = 'sponsor'
  	@user_profiles = UserProfile.where(:sponsor_profile_id => current_user.sponsor_profile.id)
  else
  	redirect_to new_user_session_path
  end
  end
 
 def welcome

 end 

  def dashboard
  end

end
