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
 def edit
     @user = User.find(params[:id])
   end
def update
    @user = User.find(params[:id])
     if @user.update_without_password(user_params)
       redirect_to adminpanel_path
     else
       render 'edit'
     end
   end

private 

def user_params
        params.require(:user).permit(:approved, :role, :name, :email, :password, :password_confirmation)
    end

end