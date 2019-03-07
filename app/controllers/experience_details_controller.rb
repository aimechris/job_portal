class ExperienceDetailsController < ApplicationController
  def new
  end
  def create
    @experience_detail = ExperienceDetail.new(experience_details_params)
    if @experiencedetail.save
      redirect_to seeker_profile_path
    else
      render 'new'
    end
  end
  def update
  end
  def show
  end
  def delete
  end
  private
    def experience_details_params
      params.require(:experiencedetail).permit(:is_current_job, :start_date, :end_date, :job_title, :company_name, :job_location_city, :job_location_state, :job_location_country, :description )
    end
end
