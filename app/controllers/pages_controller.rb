class PagesController < ApplicationController
  def userlist
  	if current_user.admin? 
  		@user_profiles = UserProfile.all
  	else
  	@user_profiles = UserProfile.where(:sponsor_profile_id => current_user.sponsor_profile.id)
  end
  end
 
 def welcome

 end 

  def dashboard
  end

end
