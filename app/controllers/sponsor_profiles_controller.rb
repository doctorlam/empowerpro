class SponsorProfilesController < ApplicationController
  before_action :set_sponsor_profile, only: [:show, :edit, :update, :destroy]

  # GET /sponsor_profiles
  # GET /sponsor_profiles.json
  def index
    @sponsor_profiles = SponsorProfile.where(:user_id => current_user.id)
    @user_profiles = UserProfile.all
  end

  # GET /sponsor_profiles/1
  # GET /sponsor_profiles/1.json
  def show
      @sponsor_profiles = SponsorProfile.where(:user_id => current_user.id)
    @user_profiles = UserProfile.all
  end

  # GET /sponsor_profiles/new
  def new
    @sponsor_profile = SponsorProfile.new(:user => @current_user)
  end

  # GET /sponsor_profiles/1/edit
  def edit
  end

  # POST /sponsor_profiles
  # POST /sponsor_profiles.json
  def create
    @sponsor_profile = SponsorProfile.new(sponsor_profile_params)
    @sponsor_profile.user_id = current_user.id

    respond_to do |format|
      if @sponsor_profile.save
        format.html { redirect_to sponsor_profiles_path, notice: 'Sponsor profile was successfully created.' }
        format.json { render :show, status: :created, location: sponsor_profiles_path }
      else
        format.html { render :new }
        format.json { render json: @sponsor_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sponsor_profiles/1
  # PATCH/PUT /sponsor_profiles/1.json
  def update
    respond_to do |format|
      if @sponsor_profile.update(sponsor_profile_params)
        format.html { redirect_to sponsor_profiles_path, notice: 'Sponsor profile was successfully updated.' }
        format.json { render :show, status: :ok, location: sponsor_profiles_path }
      else
        format.html { render :edit }
        format.json { render json: @sponsor_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sponsor_profiles/1
  # DELETE /sponsor_profiles/1.json
  def destroy
    @sponsor_profile.destroy
    respond_to do |format|
      format.html { redirect_to sponsor_profiles_url, notice: 'Sponsor profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sponsor_profile
      @sponsor_profile = SponsorProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sponsor_profile_params
      params.require(:sponsor_profile).permit(:logo, :user_id, :first_name, :last_name, :organization_name, :phone_number, :street, :city, :zip, :employee_count, :contact_time, :tos)
    end
end
