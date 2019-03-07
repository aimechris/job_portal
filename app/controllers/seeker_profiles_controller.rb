class SeekerProfilesController < ApplicationController
  def index
    @seeker_profiles = Seekerprofile.all
  end

  def new
    @seeker_profile = SeekerProfile.new
  end

  def create
    @seeker_profile = SeekerProfile.new(seeker_profile_params)

  end

  def update
    @seeker_profile =seeker_profile.update
  end
  def show
    @seeker_profile
  end
  def delete
    @seeker_profile
  end
  private
    def seeker_profile_params
      params.require(:seeker_profile).permit(:user_account, :first_name, :last_name, :current_salary, :is_annually_monthly, :currency)
    end
end
