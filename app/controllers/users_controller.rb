class UsersController < ApplicationController
	 before_action :authorize_admin, only: :create

  def create
    @user = User.create(user_params)
        if @user.save && @user.role == 'sponsor'
            redirect_to new_sponsor_profile_path notice: "Account succesfully created!" 
        elsif @user.save && @user.role == 'user'
        	redirect_to new_user_profile_path notice: "Account succesfully created!" 
        else
            render :new
        end
  end

def user_params
        params.require(:user).permit(:role, :name, :email, :password, :password_confirmation)
    end

end