class UserProfilesController < ApplicationController
  before_action :set_user_profile, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:show, :index, :new, :create, :edit, :update, :destroy]
      before_action :user_is_current_user, only: [:show, :edit, :update, :destroy]
    before_action :authorize_admin, only: [:index]
  # GET /user_profiles
  # GET /user_profiles.json
  def index
  if current_user.admin?
    @user_profiles = UserProfile.all
  else
    redirect_to dashboard_path
  end
  end

  # GET /user_profiles/1
  # GET /user_profiles/1.json
  def show
        @courses = Course.all

  end

  # GET /user_profiles/new
  def new
    @user_profile = UserProfile.new(:user => @current_user)
  end

  # GET /user_profiles/1/edit
  def edit
  end

  # POST /user_profiles
  # POST /user_profiles.json
  def create
    @user_profile = UserProfile.new(user_profile_params)
    @user_profile.user_id = current_user.id

    respond_to do |format|
      if @user_profile.save && current_user.admin?
        format.html { redirect_to @user_profile, notice: 'User profile was successfully created.' }
        format.json { render :show, status: :created, location: @user_profile }
      elsif @user_profile.save
        format.html { redirect_to dashboard_path, notice: 'User profile was successfully created.' }
        format.json { render :show, status: :created, location: dashboard_path }
      else
        format.html { render :new }
        format.json { render json: @user_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_profiles/1
  # PATCH/PUT /user_profiles/1.json
  def update
    respond_to do |format|
      if @user_profile.update(user_profile_params) && current_user.admin?

        format.html { redirect_to @user_profile, notice: 'User profile was successfully updated.' }
        format.json { render :show, status: :ok, location: dashboard_path }
      elsif @user_profile.update(user_profile_params)
        format.html { redirect_to dashboard_path, notice: 'User profile was successfully updated.' }
        format.json { render :show, status: :ok, location: dashboard_path }
      else
        format.html { render :edit }
        format.json { render json: @user_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_profiles/1
  # DELETE /user_profiles/1.json
  def destroy
    @user_profile.destroy
    respond_to do |format|
      format.html { redirect_to user_profiles_url, notice: 'User profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_profile
      @user_profile = UserProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_profile_params
      params.require(:user_profile).permit(:sponsor_profile_id, :secret_key, :first_name, :last_name, :sponsor_id, :email, :phone_number, :street, :city, :state, :zip, :contact_time, :credit_assessment, :credit_debt, :credit_score_above, :tos)
    end
    def user_is_current_user
    unless current_user == @user_profile.user or current_user.admin
      redirect_to(root_url, alert: "You cannot edit this Submission") and return
    end
  end
end
