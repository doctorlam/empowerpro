class PagesController < ApplicationController
  def userlist
  	@user_profiles = UserProfile.where(:sponsor_profile_id => current_user.sponsor_profile.id)
  end
 
 def welcome

 end 

  def dashboard
  	@user_profiles = @sponsor.user_profiles
  end

end
