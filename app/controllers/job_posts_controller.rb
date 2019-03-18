class JobPostsController < ApplicationController
  layout 'user'
  def index
    @job_posts = JobPost.all.order("created_at DESC")
    render index
  end

  def new
    @job_post = JobPost.new
  end

  def create
    @job_post = JobPost.new(job_post_params)
  end

  private
    def job_post_params
      params.require(:job_post).permit(:posted_by_id, :is_company_name_hidden,
         :created_date, :job_description, :is_active,
       job_post_activities_attributes: [:skill_set_id, :job_post, :skill_level])
    end
end
