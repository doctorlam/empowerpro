class PagesController < ApplicationController
  def home

  end
 
 def welcome

 end 

  def dashboard
  	@user_profiles = @sponsor.user_profiles
  end

end
