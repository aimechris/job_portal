class JobLocationsController < ApplicationController
  def new
  end
  def create
    @job_location = JobLocation.create(job_location_params)
    if @job_location.save
      redirect_to job_post_path
    else
      render 'new'
  end
  def update
  end
  def show
  end
  def delete
  end
  private
    def job_location_params
      params.require(:joblocation).permit(:street_address, :city, :state, :country, :zip)
    end
end
