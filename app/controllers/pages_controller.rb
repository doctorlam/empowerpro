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
 
 def adminpanel
 	 if user_signed_in? && current_user.admin? 

 	  @user_profiles = UserProfile.all
 	  @sponsor_profiles = SponsorProfile.all
    @users = User.all
 	   else
  	redirect_to new_user_session_path, alert: "You don't have permission to view this"
  end

 end 
  def approve
    @users = User.all
  end


  def dashboard
  if user_signed_in?
    @user_profiles = UserProfile.where(:user_id => current_user.id)
    @sponsor_profiles = SponsorProfile.where(:user_id => current_user.id)
    @courses = Course.all
  else
    redirect_to new_user_session_path, alert: "You need to sign in to view this"
  end
end

  def adminregistration
    def create_user
      @user = User.new(:email => params[:email], :password => params[:password])
      @user.save
    
    end
  end

  def sponsorregistration 

  end
  def userregistration
  end

end
