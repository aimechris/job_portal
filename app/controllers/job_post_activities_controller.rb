class JobPostActivitiesController < ApplicationController
  def new
    @job_post_activity = JobPostActivitie.new
  end
  def create
    @job_post_activity = JobPostActivitie.new(job_post_activity_params)
  end
  def update
  end
  def show
  end
  def delete
  end
  private
    def job_post_activity_params
      params.require(:JobPostActivity).permit(:user_account_id, :job_post_id, :apply_date)
    end
end
